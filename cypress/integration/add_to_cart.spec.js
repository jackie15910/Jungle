describe('Add to Cart', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  it('should increase cart count when adding a product', () => {
    cy.get('.product-card button').first().click();
    cy.get('.navbar-cart-count').invoke('text').as('initialCartCount');
    cy.get('.navbar-cart-count').invoke('text').as('updatedCartCount');
    cy.get('@initialCartCount').then(initialCount => {
      cy.get('@updatedCartCount').should('equal', (parseInt(initialCount) + 1).toString());
    });
  });
});