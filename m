Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BCB4EC89
	for <lists+linux-rockchip@lfdr.de>; Fri, 21 Jun 2019 17:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mh/iz6kULScd9GnuP8mhw7vWHoewfRr1frSC+JTwVFc=; b=EQxjTKQyp8xff4pGUxOieA51jS
	7FcRFPyMbr0mxfI1LWtXrs9IWqi08YyBpiCvcfqcZw5pdDDpguaGD61qEO5UhJkh6Ug3M2q84oa6E
	xavA+Sv+EI7yBMjUIKLHU7p9JEpKBQ+Jzz3jYZyzK28mh6nwzRcdvuafRKmDDz0z6UmIeaDoJHtDD
	1wvhljuB9NXzKfeFjeVYSCwbiYSl5oJ9XM5dG6pAdEROcQEZ8CLBsupiL4qqYo6hyCQteTIk5AXx0
	SBUZU8g6tiMxoF0wdMqAEp8SFGL7Q6n5lZ2Edfb8hSL2Iw64IyRKYaI3oN6YogTAsbqUZZKxX0r4L
	3NjCJ6fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLov-00030I-JL; Fri, 21 Jun 2019 15:51:21 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLoo-0002tP-2M
 for linux-rockchip@lists.infradead.org; Fri, 21 Jun 2019 15:51:15 +0000
Received: by mail-ed1-x543.google.com with SMTP id w20so3133659edd.2
 for <linux-rockchip@lists.infradead.org>; Fri, 21 Jun 2019 08:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:subject:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Vos6m/wcPEIr2mAbgorLsgKVTH5Q9DYwvSUa4XEOPt0=;
 b=KRKpZvwWQy01+q+yBPHxxe9dY5GY8VXYzNjaQ0diJMCTFVUwaNdmyNT8XxOvd38lPT
 LJrX+zjtbCjsGTfoCw1k8DO0KH1A2vLp8GH6HoqIYhT5CyRphL1XZdNcAbfkXPioOwC/
 8QmElCRaPDl4CYRt4pFQeTTYwKB7Ei6p2Ecyh/W7YFdYS63TnD88Z6d+MnxSg8WpZgDr
 Qn8uH7euOqdLjzr6il/ojBzdCd0A0jEdmEk7hAjM2WoNFdJqs7RHqBjg8P3FEpA2S6+3
 G1mwWAeDCOH01bRGbOymGvXc7DQxBiLOB+wiCTJzM0QE2H8fua5hcf76Evg5ht6U3Qhd
 6Q3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Vos6m/wcPEIr2mAbgorLsgKVTH5Q9DYwvSUa4XEOPt0=;
 b=rD2+smkOLisQQpZtObBXoh4pGpBEBi52ybdLsGInd+1iO7L6Fgh/2ml3XaSEdU6UuA
 TwwVVOhnEFtAo7v5S6t6dLtrihjnFkW7KgRpnZ7Ymv2pn0SWrepTGDeEpwBmpmc/0dIm
 JbmvgRq2UlQMt3F4E9O7XJB7nRHah2Fr/BBrzE3Qc2tb1XuDHOdt8ERp5e4H58PbP2qf
 hLhX6tjK+692uVh5cEwdhgEyCkeDzrpyYtHOhBIuuzlBLDylDu0MWhn8lWJw3V3oEdCB
 kmi0xEhvKo7Gkopc9pCB/UPIvi3Rs085y4GBwpA/FfbaY1yGxjEQ1OwpysOTBFylwtkz
 DD/A==
X-Gm-Message-State: APjAAAUeLELP5mLqFtn7O0MvNtvOyTc7gbgYthnokvRLLAM3E3fY6fPo
 Zxg/6pkJSiWL7Q0Jjh9lpZOGyYTl
X-Google-Smtp-Source: APXvYqzpUolzLVS7jFpzCbxVmikAuwaDgornioF0MCn6mT5F5lQXhk//1PnJvjxI0eRVusih9yYoCQ==
X-Received: by 2002:a17:906:6ac1:: with SMTP id
 q1mr51534913ejs.13.1561132270821; 
 Fri, 21 Jun 2019 08:51:10 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id z40sm965973edb.61.2019.06.21.08.51.10
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 08:51:10 -0700 (PDT)
To: linux-rockchip@lists.infradead.org
References: <1854794.0zkvb3x0FP@phil>
Subject: Re: Re: [PATCH] ARM: dts: rockchip: add display nodes for rk322x
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <1066dc84-f438-78a7-59fb-1ff0c44e3432@gmail.com>
Date: Fri, 21 Jun 2019 17:51:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1854794.0zkvb3x0FP@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_085114_159050_5A1D144A 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Justin, Heiko,

How about hdmi_out?
See rk3066a.dtsi rk3066a-mk808.dts

> +	hdmi: hdmi at 200a0000 {
> +		compatible = "rockchip,rk3228-dw-hdmi";
> +		reg = <0x200a0000 0x20000>;
> +		reg-io-width = <4>;
> +		interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru SCLK_HDMI_HDCP>, <&cru PCLK_HDMI_CTRL>, <&cru
SCLK_HDMI_CEC>;
> +		clock-names = "isfr", "iahb", "cec";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hdmii2c_xfer &hdmi_hpd &hdmi_cec>;
> +		resets = <&cru SRST_HDMI_P>;
> +		reset-names = "hdmi";
> +		phys = <&hdmi_phy>;
> +		phy-names = "hdmi";
> +		rockchip,grf = <&grf>;
> +		status = "disabled";
> +
> +		ports {

			#address-cells = <1>;
			#size-cells = <0>;

> +			hdmi_in: port {

			hdmi_in: port@0 {
				reg = <0>;

> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				hdmi_in_vop: endpoint at 0 {
> +					reg = <0>;
> +					remote-endpoint = <&vop_out_hdmi>;
> +				};
> +			};

			hdmi_out: port@1 {
				reg = <1>;
			};


> +		};
> +	};
> +

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
