"use client"
import React, { useRef } from "react";
import Editor, { Monaco } from "@monaco-editor/react";

const  MonacoEditor= ({height,width}:any) => {
    console.log(height , width);
  const editorRef = useRef(null);

  function handleEditorDidMount(editor: any, monaco: Monaco) {
    // here is the editor instance
    // you can store it in `useRef` for further usage
    console.log("hhh", editor, monaco);
    editorRef.current = editor;
  }

  return (
   
    <div className="m-8">
      <Editor
        height={height}
        width={width}
        defaultLanguage="go"
        defaultValue="// paste your code here"
        onMount={handleEditorDidMount}
        options={{
            minimap: {
              enabled: true,
            },
            fontSize: 20,
            cursorStyle: "line",
            wordWrap: "on",
          }}
          
      />
    </div>
  );
};

export default MonacoEditor;
