//
//  AboutCompanyViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 26.05.2024.
//

import UIKit

class AboutCompanyViewController: UIViewController, UIScrollViewDelegate {
    
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    var discountImages = ["discount1", "discount2", "discount3", "discount4", "discount5"]
    
    private lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.currentPageIndicatorTintColor = .systemBlue
        pageControl.pageIndicatorTintColor = .gray
        pageControl.backgroundColor = .clear
        pageControl.numberOfPages = discountImages.count
        return pageControl
    }()
    
    private lazy var discountScrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: CGRect(x: 10, y: 10, width: 370, height: 120))
        scrollView.isPagingEnabled = true
        scrollView.layer.cornerRadius = 10
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
    private lazy var verticalScrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 160, width: 400, height: 1200))
        scrollView.isPagingEnabled = true
        return scrollView
    }()
    
    private lazy var aboutCompanyText: UILabel = {
        let label = UILabel()
        label.text = "Информация о компании Kerr. \n \nКомпания Kerr разрабатывает и производит продукты, которые используются в каждой процедуре реставрации. Представители компании работают в тесном сотрудничестве с дистрибьюторами во всех странах мира, оказывая всестороннюю поддержку конечному потребителю и укрепляя нашу позицию одного из лидеров мирового рынка. \n \nПостоянно совершенствуя возможности выполнения эстетических реставраций через образовательные мероприятия и комплексные решения, разработанные на основе опыта клинического использования, имя Kerr стало синонимом безупречности для профессиональных стоматологов во всем мире. \n \nОтличительной чертой Kerr является стремление к инновациям. Фокусируясь на разработке и производстве композитов, адгезивных систем, оттискных материалов, цементов и аксессуаров, мы всегда опережали время. Каждый инновационный продукт от Kerr начинается с практики врачей. Когда пользователь говорит, мы слушаем. \n \nМы постоянно движемся вперед и продолжаем разрабатывать реставрационные материалы, определяющие лицо современной стоматологии. Широкий ассортимент продукции Kerr отражает ее постоянное развитие, вдохновляемое десятилетиями создания продуктов, задающих стандарты отрасли. Мы считаем, что любой новый продукт от Kerr должен быть клинически эффективен для пациента и экономически выгоден для стоматологической клиники. \n \nС помощью нашего портфеля продуктов мы хотим предложить Вам решения, которые гарантируют высокие результаты и экономическую эффективность Вашей повседневной практики. Мы завоевали доверие стоматологов по всему миру благодаря технологиям, которые уже более 130 лет оправдывают ожидания Ваших пациентов. Наш успех зависит от Ваших предпочтений, и мы гордимся возможностью предложить нашим клиентам и партнерам именно то, что им необходимо.\n \nИстория компании Kerr. \n \nКомпания Kerr была основана в США в 1891 году братьями Робертом и Джоном Керр под названием «The Detroit Dental Manufacturing Company», а уже в 1893 году продукция начала поставляться в европейские страны. \n \nВ 1939 году компания была переименована в «The KERR Manufacturing Company». \n \nВ 1959 году был открыт завод в городе Скафати (Италия). Компания Kerr активно расширяет свой ассортимент не только за счет собственных разработок, но и благодаря присоединению других компаний. Так, в 1993 в состав Kerr вошел производитель полимеризационных ламп Demetron, в 2001 году – швейцарская компания Hawe Neos, специализирующаяся на производстве аксессуаров для выполнения реставрации, в 2003 году – чешская компания Spofa, а в 2010 – компания Pentron. \n \nШтаб-квартиры в Европе, Ближнем Востоке и Африке. \n \nГоловной офис компании Kerr находится в городе Орандж (Калифорния, США). Европейское подразделение KerrHawe SA с головным офисом в Бьоджио (Швейцария) поставляет продукцию и услуги стоматологам и дистрибьюторам в Европе, Африке и на Ближнем Востоке. Заводы Kerr находятся в Оранж (США), Мехикали (Мексика), Бьоджио (Швейцария), Скафати (Италия) и Йичине (Чехия)."
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "О компании"
        navigationItem.hidesBackButton = true
        
        setupSubviews(verticalScrollView)
        setupDiscountScrollView()
        setupVerticalScrollView()
        
        setConstraints()
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pageNumber)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setupDiscountScrollView() {
        
        for index in 0..<discountImages.count {
            frame.origin.x = discountScrollView.frame.size.width * CGFloat(index)
            frame.size = discountScrollView.frame.size
            let imageView = UIImageView(frame: frame)
            imageView.image = UIImage(named: discountImages[index])
            self.discountScrollView.addSubview(imageView)
        }
        
        discountScrollView.contentSize = CGSize(
            width: (discountScrollView.frame.size.width * CGFloat(discountImages.count)),
            height: discountScrollView.frame.height
        )
        discountScrollView.delegate = self
        
    }
    
    private func setupVerticalScrollView() {
        
        self.verticalScrollView.addSubview(discountScrollView)
        self.verticalScrollView.addSubview(pageControl)
        self.verticalScrollView.addSubview(aboutCompanyText)
        self.verticalScrollView.delegate = self
        
        
        verticalScrollView.contentSize = CGSize(
            width: verticalScrollView.frame.width,
            height: 2700
        )
    }
    
    private func setConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(verticalScrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0))
        constraints.append(verticalScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0))
        constraints.append(verticalScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0))
        constraints.append(verticalScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0))
        
        constraints.append(pageControl.topAnchor.constraint(equalTo: verticalScrollView.topAnchor, constant: 130))
        constraints.append(pageControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(pageControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(aboutCompanyText.topAnchor.constraint(equalTo: pageControl.bottomAnchor, constant: 10))
        constraints.append(aboutCompanyText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(aboutCompanyText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        NSLayoutConstraint.activate(constraints)
    }
}

