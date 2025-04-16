"use client";

import { useState } from "react";
import { Button } from "@/components/ui/button";
import { Textarea } from "@/components/ui/textarea";
import { Input } from "@/components/ui/input";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Copy, Check } from "lucide-react";
import { cn } from "@/lib/utils";

export default function PastebinPage() {
  const [content, setContent] = useState("");
  const [title, setTitle] = useState("");
  const [savedPastes, setSavedPastes] = useState<
    {
      id: string;
      title: string;
      content: string;
      date: Date;
      expiryDate: Date | null;
    }[]
  >([]);
  const [activeView, setActiveView] = useState<"create" | "view">("create");
  const [activePaste, setActivePaste] = useState<{
    id: string;
    title: string;
    content: string;
    date: Date;
    expiryDate: Date | null;
  } | null>(null);
  const [copied, setCopied] = useState(false);
  const [expiryOption, setExpiryOption] = useState<string>("never");

  const handleSubmit = () => {
    if (!content.trim()) return;

    // Calculate expiry date based on selected option
    let expiryDate: Date | null = null;
    const now = new Date();

    switch (expiryOption) {
      case "10min":
        expiryDate = new Date(now.getTime() + 10 * 60 * 1000);
        break;
      case "1hour":
        expiryDate = new Date(now.getTime() + 60 * 60 * 1000);
        break;
      case "1day":
        expiryDate = new Date(now.getTime() + 24 * 60 * 60 * 1000);
        break;
      case "1week":
        expiryDate = new Date(now.getTime() + 7 * 24 * 60 * 60 * 1000);
        break;
      case "never":
      default:
        expiryDate = null;
    }

    const newPaste = {
      id: Math.random().toString(36).substring(2, 9),
      title: title.trim() || "Untitled Paste",
      content,
      date: new Date(),
      expiryDate,
    };

    

    setSavedPastes([newPaste, ...savedPastes]);
    setActivePaste(newPaste);
    setActiveView("view");
    setContent("");
    setTitle("");
    setExpiryOption("never");
  };

  const copyToClipboard = () => {
    if (!activePaste) return;

    const url = `${window.location.origin}/paste/${activePaste.id}`;
    navigator.clipboard.writeText(url);
    setCopied(true);

    setTimeout(() => {
      setCopied(false);
    }, 2000);
  };

  const formatDate = (date: Date) => {
    return new Intl.DateTimeFormat("en-US", {
      month: "short",
      day: "numeric",
      year: "numeric",
      hour: "2-digit",
      minute: "2-digit",
    }).format(date);
  };

  const isPasteExpired = (paste: { expiryDate: Date | null }) => {
    if (!paste.expiryDate) return false;
    return new Date() > new Date(paste.expiryDate);
  };

  const formatExpiryTime = (expiryDate: Date | null) => {
    if (!expiryDate) return "Never expires";

    const now = new Date();
    const expiry = new Date(expiryDate);
    const diffMs = expiry.getTime() - now.getTime();

    if (diffMs <= 0) return "Expired";

    const diffSec = Math.floor(diffMs / 1000);
    const diffMin = Math.floor(diffSec / 60);
    const diffHour = Math.floor(diffMin / 60);
    const diffDay = Math.floor(diffHour / 24);

    if (diffDay > 0)
      return `Expires in ${diffDay} day${diffDay > 1 ? "s" : ""}`;
    if (diffHour > 0)
      return `Expires in ${diffHour} hour${diffHour > 1 ? "s" : ""}`;
    if (diffMin > 0)
      return `Expires in ${diffMin} minute${diffMin > 1 ? "s" : ""}`;
    return `Expires in ${diffSec} second${diffSec > 1 ? "s" : ""}`;
  };

  return (
    <div className="container mx-auto py-8 max-w-4xl">
      <h1 className="text-3xl font-bold mb-8 text-center">CodeBin</h1>

      <div className="grid grid-cols-1 md:grid-cols-4 gap-6">
        <div className="md:col-span-1">
          <div className="space-y-2">
            <Button
              variant={activeView === "create" ? "default" : "outline"}
              className="w-full justify-start"
              onClick={() => setActiveView("create")}
            >
              <span>New Paste</span>
            </Button>

            <div className="space-y-1 pt-4">
              <h3 className="text-sm font-medium">Recent Pastes</h3>
              {savedPastes.filter((paste) => !isPasteExpired(paste)).length >
              0 ? (
                <ul className="space-y-1">
                  {savedPastes
                    .filter((paste) => !isPasteExpired(paste))
                    .map((paste) => (
                      <li key={paste.id}>
                        <Button
                          variant="ghost"
                          className={cn(
                            "w-full justify-start text-left font-normal truncate",
                            activePaste?.id === paste.id && "bg-muted"
                          )}
                          onClick={() => {
                            setActivePaste(paste);
                            setActiveView("view");
                          }}
                        >
                          <span className="truncate">{paste.title}</span>
                        </Button>
                      </li>
                    ))}
                </ul>
              ) : (
                <p className="text-sm text-muted-foreground px-2">
                  No pastes yet
                </p>
              )}
            </div>
          </div>
        </div>

        <div className="md:col-span-3">
          {activeView === "create" ? (
            <Card>
              <CardHeader>
                <CardTitle>Create New Paste</CardTitle>
                <CardDescription>
                  Paste your code or text below and share it with others
                </CardDescription>
              </CardHeader>
              <CardContent>
                <div className="space-y-4">
                  <div className="space-y-2">
                    <Input placeholder="enter your title here" onChange={(e)=>setTitle(e.target.value)}/>
                    <Textarea
                      placeholder="paste your content here..."
                      className="min-h-[300px] font-mono"
                      value={content}
                      onChange={(e) => setContent(e.target.value)}
                    />
                  </div>
                  <div className="space-y-2">
                    <label htmlFor="expiry" className="text-sm font-medium">
                      Expiry
                    </label>
                    <select
                      id="expiry"
                      className="w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background"
                      value={expiryOption}
                      onChange={(e) => setExpiryOption(e.target.value)}
                    >
                      <option value="never">No expiry</option>
                      <option value="10min">10 minutes</option>
                      <option value="1hour">1 hour</option>
                      <option value="1day">1 day</option>
                      <option value="1week">1 week</option>
                    </select>
                  </div>
                </div>
              </CardContent>
              <CardFooter>
                <Button onClick={handleSubmit} disabled={!content.trim()}>
                  Create Paste
                </Button>
              </CardFooter>
            </Card>
          ) : activePaste ? (
            <Card>
              <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
                <div>
                  <CardTitle>{activePaste.title}</CardTitle>
                  <CardDescription>
                    Created on {formatDate(activePaste.date)}
                    {activePaste.expiryDate && (
                      <span className="ml-2">
                        • {formatExpiryTime(activePaste.expiryDate)}
                      </span>
                    )}
                  </CardDescription>
                </div>
                <Button
                  size="sm"
                  variant="outline"
                  className="h-8 gap-1"
                  onClick={copyToClipboard}
                >
                  {copied ? (
                    <>
                      <Check className="h-4 w-4" />
                      <span>Copied</span>
                    </>
                  ) : (
                    <>
                      <Copy className="h-4 w-4" />
                      <span>Copy Link</span>
                    </>
                  )}
                </Button>
              </CardHeader>
              <CardContent>
                <pre className="bg-muted p-4 rounded-md overflow-auto whitespace-pre-wrap font-mono text-sm min-h-[300px]">
                  {activePaste.content}
                </pre>
              </CardContent>
              <CardFooter>
                <Button
                  variant="outline"
                  onClick={() => setActiveView("create")}
                >
                  Create New Paste
                </Button>
              </CardFooter>
            </Card>
          ) : (
            <Card>
              <CardContent className="flex items-center justify-center min-h-[300px]">
                <p className="text-muted-foreground">
                  Select a paste to view or create a new one
                </p>
              </CardContent>
            </Card>
          )}
        </div>
      </div>
    </div>
  );
}
