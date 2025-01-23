function deleteNote(noteId) {
    if (confirm("Are you sure you want to delete this note?")) {
      fetch("/delete-note", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ noteId: noteId }),
      })
        .then((response) => {
          if (response.ok) {
           
            window.location.href = "/";
          } else {
            alert("Failed to delete the note.");
          }
        })
        .catch((error) => console.error("Error:", error));
    }
  }
  