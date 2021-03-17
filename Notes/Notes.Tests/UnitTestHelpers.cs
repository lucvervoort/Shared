using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Notes.Tests
{
    public static class UnitTestHelpers
    {
        public static void ShouldEqual<T>(this T actualValue, T expectedValue)
        {
            Assert.AreEqual(expectedValue, actualValue);
        }
    }
}