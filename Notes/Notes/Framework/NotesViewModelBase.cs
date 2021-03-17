using GalaSoft.MvvmLight;
using System;
using System.Linq.Expressions;

namespace Notes.Framework
{
    public class NotesViewModelBase : ViewModelBase
    {
        public void RaisePropertyChanged<T>(Expression<Func<T>> propertyExpression)
        {
            var memberExpr = propertyExpression.Body as MemberExpression;
            if (memberExpr == null)
                throw new ArgumentException("Property Expression should represent access to a member");
            string memberName = memberExpr.Member.Name;
            RaisePropertyChanged(memberName);
        }
    }
}
