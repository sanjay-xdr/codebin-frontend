import type React from "react"
import "@/app/globals.css"
import { Inter } from "next/font/google"
// import { ThemeProvider } from "@/components/theme-provider"

const inter = Inter({ subsets: ["latin"] })

export const metadata = {
  title: "CodeBin - Share Code Snippets",
  description: "A simple pastebin-like application for sharing code and text snippets",
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en" suppressHydrationWarning>
      <body className={inter.className}>
       {children}
      </body>
    </html>
  )
}

