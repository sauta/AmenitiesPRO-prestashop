<?php

// This file has been auto-generated by the Symfony Dependency Injection Component for internal use.

if (\class_exists(\Container9y4eoua\appDevDebugProjectContainer::class, false)) {
    // no-op
} elseif (!include __DIR__.'/Container9y4eoua/appDevDebugProjectContainer.php') {
    touch(__DIR__.'/Container9y4eoua.legacy');

    return;
}

if (!\class_exists(appDevDebugProjectContainer::class, false)) {
    \class_alias(\Container9y4eoua\appDevDebugProjectContainer::class, appDevDebugProjectContainer::class, false);
}

return new \Container9y4eoua\appDevDebugProjectContainer(array(
    'container.build_hash' => '9y4eoua',
    'container.build_id' => 'eaa1f330',
    'container.build_time' => 1537540954,
), __DIR__.\DIRECTORY_SEPARATOR.'Container9y4eoua');
