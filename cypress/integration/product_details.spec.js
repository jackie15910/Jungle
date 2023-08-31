describe('Product Details', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  it('should navigate to product details page', () => {
    cy.get('.product-card').first().click();
    cy.get('.product-details').should('be.visible');
  });
});