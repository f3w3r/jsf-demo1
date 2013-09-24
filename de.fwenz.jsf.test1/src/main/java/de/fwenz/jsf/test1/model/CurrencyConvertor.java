/**
 * 
 */
package de.fwenz.jsf.test1.model;

/**
 * @author Felix Wenz
 * 
 */
public class CurrencyConvertor {
    private double euro = 0.0;
    private double dollar = 0.0;
    private boolean initial = true;

    public boolean getInitial() {
        return initial;
    }

    public String reset() {
        initial = true;
        dollar = 0;
        euro = 0;
        return "reset";
    }

    public String euroToDollar() {
        initial = false;
        dollar = euro * 1.32;
        return "calculated";
    }

    /**
     * @return the euro value
     */
    public double getEuro() {
        return euro;
    }

    /**
     * @param euro
     *            the euro value to set
     */
    public void setEuro(double euro) {
        this.euro = euro;
    }

    /**
     * @return the dollar value
     */
    public double getDollar() {
        return dollar;
    }
}
