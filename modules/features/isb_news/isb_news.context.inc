<?php
/**
 * @file
 * isb_news.context.inc
 */

/**
 * Implements hook_context_default_contexts().
 */
function isb_news_context_default_contexts() {
  $export = array();

  $context = new stdClass();
  $context->disabled = FALSE; /* Edit this to true to make a default context disabled initially */
  $context->api_version = 3;
  $context->name = 'news_active_menu';
  $context->description = 'Sets active menu to \'News\' for news content type';
  $context->tag = 'Active menu';
  $context->conditions = array(
    'node' => array(
      'values' => array(
        'news' => 'news',
      ),
      'options' => array(
        'node_form' => '1',
      ),
    ),
  );
  $context->reactions = array(
    'menu' => 'news',
  );
  $context->condition_mode = 0;

  // Translatables
  // Included for use with string extractors like potx.
  t('Active menu');
  t('Sets active menu to \'News\' for news content type');
  $export['news_active_menu'] = $context;

  return $export;
}
