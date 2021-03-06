using System.Collections.Generic;
using Notes.Model;

namespace Notes.Business
{
    public interface INoteRepository
    {
        /// <summary>
        /// Saves the specified note.
        /// </summary>
        /// <param name="note">The note.</param>
        void Save(Note note);

        /// <summary>
        /// Deletes the specified note.
        /// </summary>
        /// <param name="note">The note.</param>
        void Delete(Note note);

        /// <summary>
        /// Resets the repository.
        /// </summary>
        void RepositoryReset();

        /// <summary>
        /// Returns the entire repository.
        /// </summary>
        /// <returns>A List with all Notes</returns>
        IList<Note> FindAll();
    }
}
