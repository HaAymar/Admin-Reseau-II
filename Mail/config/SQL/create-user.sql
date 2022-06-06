# Ajout du domaine virtuel
INSERT INTO `mail`.`virtual_domains`
(`id` ,`name`)
VALUES
('1', 'l1-4.ephec-ti.be');

# Ajout des différentes adresses mails utilisées + mdp + maildir + à quel domaine la lier
INSERT INTO `mail`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('1', '1', ENCRYPT('contact-mdp', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'contact@l1-4.ephec-ti.be', 'l1-4.ephec-ti.be/contact/');

INSERT INTO `mail`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('2', '1', ENCRYPT('b2b-mdp', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'b2b@l1-4.ephec-ti.be', 'l1-4.ephec-ti.be/b2b/');

INSERT INTO `mail`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('3', '1', ENCRYPT('vincent-mdp', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'brichant.vincent@l1-4.ephec-ti.be', 'l1-4.ephec-ti.be/brichant-vincent/');

INSERT INTO `mail`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('4', '1', ENCRYPT('aymar-mdp', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'davy.aymar@l1-4.ephec-ti.be', 'l1-4.ephec-ti.be/davy-aymar/');

INSERT INTO `mail`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('5', '1', ENCRYPT('serge-mdp', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'folly.serge@l1-4.ephec-ti.be', 'l1-4.ephec-ti.be/folly-serge/');