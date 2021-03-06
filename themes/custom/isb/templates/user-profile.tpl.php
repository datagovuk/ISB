<?php

/**
 * @file
 * Default theme implementation to present all user profile data.
 *
 * This template is used when viewing a registered member's profile page,
 * e.g., example.com/user/123. 123 being the users ID.
 *
 * Use render($user_profile) to print all profile items, or print a subset
 * such as render($user_profile['user_picture']). Always call
 * render($user_profile) at the end in order to print all remaining items. If
 * the item is a category, it will contain all its profile items. By default,
 * $user_profile['summary'] is provided, which contains data on the user's
 * history. Other data can be included by modules. $user_profile['user_picture']
 * is available for showing the account picture.
 *
 * Available variables:
 *   - $user_profile: An array of profile items. Use render() to print them.
 *   - Field variables: for each field instance attached to the user a
 *     corresponding variable is defined; e.g., $account->field_example has a
 *     variable $field_example defined. When needing to access a field's raw
 *     values, developers/themers are strongly encouraged to use these
 *     variables. Otherwise they will have to explicitly specify the desired
 *     field language, e.g. $account->field_example['en'], thus overriding any
 *     language negotiation rule that was previously applied.
 *
 * @see user-profile-category.tpl.php
 *   Where the html is handled for the group.
 * @see user-profile-item.tpl.php
 *   Where the html is handled for each item in the group.
 * @see template_preprocess_user_profile()
 *
 * @ingroup themeable
 */
?>
<div class="user-info"<?php print $attributes; ?>>
  <div class="profile">
    <div class="inside user-profile">
      <?php print render($user_profile['field_avatar']); ?>
      <div class="user-info-right">
        <?php if($full_name): ?>
          <h2 class="full-name"><?php print $full_name?></h2>
        <?php endif; ?>
        <?php if($job_title): ?>
          <h3 class="job-title"><?php print $job_title?></h3>
        <?php endif; ?>
        <div class="member-for"><?php print $member_for?></div>
        <?php if($bio): ?>
          <div class="bio"><?php print $bio?></div>
        <?php endif; ?>
      </div>
    </div>
  </div>

</div>
<div class="user-other row">
  <div class="col-md-12">
    <?php
    hide($user_profile['field_avatar']);
    hide($user_profile['field_first_name']);
    hide($user_profile['field_surname']);
    hide($user_profile['field_job_title']);
    hide($user_profile['field_twitter']);
    hide($user_profile['field_linkedin_url']);
    hide($user_profile['field_facebook_url']);
    hide($user_profile['field_bio']);
    hide($user_profile['summary']);
    hide($user_profile['user_picture']);
    ?>
  </div>
</div>
