/**
 * Wiki Translation Helper
 * 
 * This file provides utilities for translation management.
 * Note: GitHub Wiki doesn't support external translation services due to
 * iframe restrictions. Translation is handled via browser features instead.
 */

// Translation configuration
const TRANSLATION_CONFIG = {
  pageLanguage: 'en',
  supportedLangs: ['en', 'pt', 'es'],
  langNames: {
    'en': 'English',
    'pt': 'Português',
    'es': 'Español'
  }
};

/**
 * Get language name from code
 * @param {string} langCode - Language code
 * @returns {string} Language name
 */
function getLanguageName(langCode) {
  return TRANSLATION_CONFIG.langNames[langCode] || langCode;
}

/**
 * Check if a language is supported
 * @param {string} langCode - Language code to check
 * @returns {boolean} True if supported
 */
function isLanguageSupported(langCode) {
  return TRANSLATION_CONFIG.supportedLangs.includes(langCode);
}

// Export for potential module use
if (typeof module !== 'undefined' && module.exports) {
  module.exports = {
    TRANSLATION_CONFIG,
    getLanguageName,
    isLanguageSupported
  };
}
