﻿using System;
using System.Collections.Generic;
using EvilDICOM.Core.Element;
using EvilDICOM.Core.Helpers;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace EvilDICOM.Core.Tests
{
    [TestClass]
    public class DecimalStringTests
    {
        #region Fields

        private DecimalString _decimalString;

        #endregion

        #region Setup and teardown

        [TestInitialize]
        public void Init()
        {
            _decimalString = new DecimalString(TagHelper.BEAM_DOSE_SPECIFICATION_POINT, new[] {1.0, -3.5, 2.5});
        }

        [TestCleanup]
        public void Cleanup()
        {
            _decimalString = null;
        }

        #endregion

        #region Unit tests

        [TestMethod]
        public void DData_Getter_ReturnsFirstValue()
        {
            const double expected = 1.0;
            var actual = _decimalString.DData;
            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void DData__Getter_ReturnsAllValues()
        {
            var expected = new[] {1.0, -3.5, 2.5};
            var actual = _decimalString.DData_;
            CollectionAssert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void DData_Setter_MakesObjectSingleValued()
        {
            _decimalString.DData = -4.2;

            var expected = new[] { -4.2 };
            var actual = _decimalString.DData_;
            CollectionAssert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void DData__Setter_ChangesAllValues()
        {
            _decimalString.DData_ = new List<double> {-0.3, 5.1};

            var expected = new[] {-0.3, 5.1};
            var actual = _decimalString.DData_;
            CollectionAssert.AreEqual(expected, actual);
        }

        [TestMethod, ExpectedException(typeof(InvalidCastException))]
        public void DData_Setter_InvalidUnderlyingType_Throws()
        {
            _decimalString.DData = "throw";
        }

        [TestMethod, ExpectedException(typeof(InvalidCastException))]
        public void DData__Setter_InvalidUnderlyingType_Throws()
        {
            _decimalString.DData_ = new List<char> { 't' , 'h', 'r', 'o', 'w' };
        }

        [TestMethod]
        public void ToString_VerifyOutput()
        {
            const string expected = "(300A,0082) : BeamDoseSpecificationPoint (DecimalString) -> 1 | -3.5 | 2.5";
            var actual = _decimalString.ToString();
            Assert.AreEqual(expected, actual);
        }

        #endregion
    }
}