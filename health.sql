-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql12.freemysqlhosting.net
-- Generation Time: Mar 09, 2019 at 05:42 AM
-- Server version: 5.5.58-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql12279572`
--

-- --------------------------------------------------------

--
-- Table structure for table `health`
--

CREATE TABLE `health` (
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `symptoms` varchar(255) DEFAULT NULL,
  `pred_diseases` varchar(255) DEFAULT NULL,
  `analgesics` varchar(255) DEFAULT NULL,
  `treatments_scans` varchar(255) DEFAULT NULL,
  `diet` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health`
--

INSERT INTO `health` (`age`, `gender`, `symptoms`, `pred_diseases`, `analgesics`, `treatments_scans`, `diet`) VALUES
(0, 'M/F', 'Stopped Growth', 'Growth Disorder, Turner Syndrome', 'Thyroid hormone pills, growth hormone injections', 'Bone Age Xray, MRI scan', 'Meat, Seafood,Leafygreens,Diary,Spinach, Beef'),
(0, 'M/F', 'Wheezing, Coughing and troubled breathing', 'Asthma', 'Metered dose inhalers, nebulizers', 'Asthma therapy', 'Fruits and vegetables'),
(0, 'M/F', 'baby too small, weight<5.5 pounds', 'Learning disabilities', 'iron supplements', 'Temperature Control Incubator', 'iron supplements'),
(0, 'M/F', 'Repetetive behaviour,prefers to be alone', 'Autism\r\n', 'Ketamine, Midazolem', 'Teach social skills and cognitive behaviour', 'Only yelow or white foods such as rice, potatoes or pasta and strictly avoid diary'),
(0, 'M/F', 'Self-destructiveness,sadness and being upset', 'Depression', 'Prozac, Zoloft or Celexa', 'Constantly praise him, teach skills, and give self-development talks', 'Fish and whole grains'),
(0, 'M/F', 'Paleness, loss of energy, weightloss and easy bruising', 'Cancer or Brain Tumor', 'Morphine or Ibuprofen', 'Chemotherapy or Stem cell transplant', 'Cheese, Meat, Seafood, Diary and Eggs'),
(0, 'M/F', 'Fever, Tiredness or Loss of Appetite', 'Chickenpox', 'Acetaminophen', 'lukewarm bath and apply calamine lotion to itchy areas', 'Raw fruits, Vegetables, Meat, Pastured eggs and avoid salty foods'),
(0, 'M/F', 'easy tiredness and overweight', 'Obesity', 'Not suggested to take analgesics for obesity', 'building heathy eating ang drinking habits and physical activities like exercise', 'Fruits and vegetables, and avoid skipping breakfast'),
(0, 'M/F', 'Severe tooth ache', 'Cavities\r\n', 'Ibuprofen or Aspirin', 'Fluoride toothpaste', 'juices and avoid sweets, chocolates and unhealthy snacks'),
(0, 'M/F', 'Often urinating, slow healing of bruises, weightloss', 'Diabetes', 'Tylenol or Aspirin', 'Insulin Treatment', 'brown rice or cereals with two eggs daily'),
(120, 'M/F', 'High body temperature, severe headache and tiredness', 'Fever', 'Paracetemol or Aspirin', 'Tylenol, Ibuprofen to treat stomach irritation', 'fluid intake like gatorage, fruitjuices or milk'),
(0, 'M/F', 'Depression, Eating Disorders', 'Drug or Smoke or Alcohol Addiction', 'Baclofen, Gebapentin', 'Visiting Rehabilitation Centers, Help teens choose good friends and learn to say NO', 'Green leafy vegetables'),
(1, 'F', 'Swelling, irritation, breast or nipple pain', 'Breast Cancer', 'Tamoxifen', 'heart-smart diet and indulge in physical activity and avoid smoking', 'whole grains, beans, legumes'),
(1, 'M/F', 'Sudden Confusion, Dizziness, Loss of Banlance', 'Stroke', 'Anti-platelet drugs like Plavix', 'Clot-bursting therapy', 'Fruits and Vegetables, and avoid salt'),
(1, 'M/F', 'Shortness of breath, or being inactive', 'COPD', 'Tudorza or Brovana', 'Inhalers and oral steroids', 'Eggs, Cheese, Meat, fish, and Poultry'),
(1, 'M/F', 'Forgetfulness or Confusion', 'Alzheimer\'s disease', 'Aricept or Exelon', 'MRI and CT scans', 'berries, beans and whole grains'),
(1, 'M/F', 'Chest pain, confusion, cough or fatigue', 'Pneumonia or Influenza', 'Levofloxacin', 'Plenty of fluids and get lot of rest', 'Citrus fruits, Oily fish and Leafy greens'),
(1, 'M/F', 'Often urinating, slow healing of bruises, weightloss', 'Diabetes', 'Tylenol or Aspirin', 'Insulin Treatment', 'Brown rice or cereals with two eggs daily'),
(1, 'M/F', 'reduced urine, swelling of legs or fatigue', 'Kidney Disease', 'Naproxen or Ibuprofen', 'Dialysis', 'Berries, bell peppers, onions and apples'),
(1, 'M/F', 'Fever, chills, rapid breathing and heart rate', 'Blood poisoning', 'Ceftriaxone or Azithromycin', 'Vasoconstriction to narrow blood vessels', 'Leafy greens like spinach'),
(1, 'M/F', 'Fragile bones', 'Brittle bone disease', 'Biphosphonates, calcium and vitamin D supplements', 'VitaminD supplements and avoid smoking and alcohol', 'fruits and foods high on calcium'),
(2, 'M/F', 'Skin wrinkles and aging', 'No disease', 'Anti-aging creams', 'Blepharoplasty surgery to get rid of aging', 'Berries, Broccoli, Papaya, Spinach, Nuts and Avocado'),
(2, 'M/F', 'Blurry and loss of vision', 'Mascular Degeneration', 'Lucentis or Macugen', 'Regular exercise and avoid smoking', 'Fish and vegetables'),
(2, 'M/F', 'Blood pressure reading 140 or higher', 'High blood pressure', 'Thiazide diuretics', 'Physical activity like exercise and avoid smoking and srinking', 'low-fat diary, whole grains and Fruits'),
(2, 'F', 'Trouble sleeping, mood swings, vaginal dryness', 'Menopause', 'Isoflav capsules', 'Estrogen levels test', 'Fish, Fruits, Vegetables and Diary'),
(2, 'M/F', 'Cold, Allergies, Nasal problems', 'Sinusitis', 'Acetaminophen or Nasal spray', 'Antibiotics like Aspirin and Nasal sprays', 'Salmon, Avocados, Cherries and Beans'),
(2, 'M', 'Pain while urine and ejaculation', 'Prostate Cancer', 'Bicalutamide or Casodex', 'Radiation therapy or prostatectomy', 'Veggies and fruits and low in meat'),
(2, 'M/F', 'Trembling body parts and loss of balance', 'Parkinson\'s disease', 'Vesoret capsules', 'Cardibopa-levodopa', 'Fruits and vegetables'),
(2, 'M/F', 'Buildup of fluids in legs, ankles and legs, tiredness', 'Heart failure', 'Carvedilol or Metoprolol', 'ACE inhibitors', 'Plain rice, fish, egg, milk and yoghurt');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


