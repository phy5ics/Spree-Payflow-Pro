Spree Payflow Pro
=================

An extension for Spree that exposes the Payflow object that is bundled with Active Merchant.  To configure in the Spree admin, go to Configuration -> Payment Methods -> New Payment Method.  From there, You'll want to set up three different payment methods - one for Development, one for Test and one for Production.  After adding a description, set the Provider to "Gateway::Payflow".  Then, for Development and Test, set server to https://pilot-payflowpro.paypal.com.  For Production, set server to https://payflowpro.paypal.com.  The Partner, Login and Password are all the same as what you use to login to manager.paypal.com.  That's it.

Copyright (c) 2011 John Barton, released under the New BSD License
