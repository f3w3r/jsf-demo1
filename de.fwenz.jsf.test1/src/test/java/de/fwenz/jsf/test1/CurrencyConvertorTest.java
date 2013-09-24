package de.fwenz.jsf.test1;

import org.junit.Before;
import org.junit.Test;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.core.Is.is;

import de.fwenz.jsf.test1.model.CurrencyConvertor;

public class CurrencyConvertorTest {

    private static CurrencyConvertor classUnderTest;

    @Before
    public void setUp() throws Exception {
        classUnderTest = new CurrencyConvertor();
    }

    @Test
    public void testGetInitial() {
        assertThat(classUnderTest.getInitial(), is(true));
    }

    @Test
    public void testReset() {
        assertThat(classUnderTest.reset(), is("reset"));
    }

    @Test
    public void testEuroToDollar() {
        assertThat(classUnderTest.euroToDollar(), is("calculated"));
    }

    @Test
    public void testSetEuro() {
        classUnderTest.setEuro(23.42);
        assertThat(classUnderTest.getEuro(), is(23.42));
    }

    @Test
    public void testGetDollar() {
        assertThat(classUnderTest.getDollar(), is(0.0));
    }

}
