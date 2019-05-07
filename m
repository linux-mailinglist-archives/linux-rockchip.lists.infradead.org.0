Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0565162DB
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 13:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wROTjOLa7UvHDw9l0KYXpT4qIRH9+XaZlPZZg9Fv6UY=; b=jpQQNpCDvjqka7
	Y6sWaRzYWa3rt7IMJC47Po3Xg3xTqo5YrBP1lyJj3iJ6DLZSDrn0vrA4nuijWFTxviud+QsTuWQQF
	JenzimG6xxu2Z0LG7iN8w0JMfn2a6UPRuTqWwtSN5XkM7DXjRTIh2M75nR1A4azUcF82/I92l0Kmm
	4Fh7efDOqXKZlNPuZX+l8xJOeizE5SEKn3Dx7eE6xJazyMBLC7rTKFLJmUTs8hBf8EZ/mvb1z42bZ
	7ZAJ1EN5LxBoFBBXt3WtReNjEsC+/QTby8/PV0H7AIm5QTIGbXQvlF/IB7/jFsUjw4ud/xrSE+ktO
	yBIrMH/OSnrdPSpoHQLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNyM4-0001uU-0O; Tue, 07 May 2019 11:33:52 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNyM0-0001tn-Na
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 11:33:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id b3so8525227pfd.1
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 04:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sR5BpYMQqvU33+qKoi/MmdBbUlBWeD3X1bsZEIF3QFw=;
 b=fhC9+A8r0mSbiTlAYOPbaxaHR1YL8JghQMh+MjGsndpuB6jiMcbihqosl7SqrR9Bg4
 eJHhAE0+cxTlbttRzHm3WxGeN6cKlprzV5wVVJNbblxJvdhzyJQSCl7//+UbdSAf6nvg
 gCoefUxDiFmCGsr2NcvUePitEJFz5LwVkvbwB2DM6+nS1hcw6OAOZrJqlh5Rse3Glnpy
 fEdYulBRxsoqZj4BR0KKihU330+fKteuIQyFbJeIp8MY4TtIbt4iTe2vV28NjA2yAZXf
 DD2MiUAjg3Tj45FdV+s6ymLE7zzPNib9GR7zpj+3EOOWxxDbjd9L1OBHlSGsmJcO9T6D
 svAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sR5BpYMQqvU33+qKoi/MmdBbUlBWeD3X1bsZEIF3QFw=;
 b=ciEpfkS/oa6lUZtohV9ebelqOJc+hs1HmSSaW9ENkhAGrEbaDKN+CJ/SpAv1P4mrbH
 l5qe7kBIhWWGxqYBZbhPmd1cuCIhlqTaXq6InSsB3QlHmMPTEquu4NLZSSzC5upALWqi
 gjmSzcl2PKiqi0vHTRB5UAWh5DnrqTeDMlPKKxHmdDeJdfZlffrVj7Rb0OcChHTH0rBK
 qiY/Qh8bvUMBUDWe+eCVqCxACzG24bKe20fFX26Zrm1pMVdraW2cuAeNOyylYAtb9eRV
 +zGP6u+KG0DpZAH0oBoGUj31Nk/nAJbMSKKUozIn36UkJESVkI/ts0XSE6zXPzg39qQj
 ATYg==
X-Gm-Message-State: APjAAAX3rS+j+AtZMVMLfXx+Hsd6mrBQM8NDLoRypnn1raSisAAcCtDc
 bxZ0lxT51URjsRrQrKeRhsGc
X-Google-Smtp-Source: APXvYqyAKJZP4RUcj4/+fM77Hhrfsi/pdsboySmMz+0IE4qjVjtfRycKA+OR92PXBDkgcqkej5fGkQ==
X-Received: by 2002:a63:5516:: with SMTP id j22mr36851432pgb.370.1557228826789; 
 Tue, 07 May 2019 04:33:46 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:99e:34fe:41ce:b81d:ca3c:de5])
 by smtp.gmail.com with ESMTPSA id 8sm8279543pfn.158.2019.05.07.04.33.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 04:33:46 -0700 (PDT)
Date: Tue, 7 May 2019 17:03:39 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Enable SPI0 and SPI4 on Rock960
Message-ID: <20190507113339.GA309@Mani-XPS-13-9360>
References: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
 <3484838.jBNMtg6mRV@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3484838.jBNMtg6mRV@phil>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_043348_778013_0CE9F74C 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: tom@vamrs.com, linux-kernel@vger.kernel.org, dev@vamrs.com,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Heiko,

On Tue, May 07, 2019 at 01:17:10PM +0200, Heiko Stuebner wrote:
> Am Montag, 6. Mai 2019, 14:04:57 CEST schrieb Manivannan Sadhasivam:
> > Enable SPI0 and SPI4 exposed on the Low and High speed expansion
> > connectors of Rock960.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > index 12285c51cceb..7498344d4a73 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > @@ -114,6 +114,18 @@
> >  	};
> >  };
> >  
> > +&spi0 {
> > +	/* On Low speed expansion */
> > +	label = "LS-SPI0";
> 
> where does the label property come from and what does it do?
> It's not part of the rockchip-spi / general-spi binding.
> 

It is not part of the binding but I thought it will provide the users
the information of the SPI bus as per the specification when they
look into devicetree.

If it doesn't makes sense, I can remove that!

Thanks,
Mani

> 
> Heiko
> 
> > +	status = "okay";
> > +};
> > +
> > +&spi4 {
> > +	/* On High speed expansion */
> > +	label = "HS-SPI1";
> > +	status = "okay";
> > +};
> > +
> >  &usbdrd_dwc3_0 {
> >  	dr_mode = "otg";
> >  };
> > 
> 
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
