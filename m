Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 376821A8D1D
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 23:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qlucwdSwoAEAysYs4GbKUmHgEqE5LnE12uSuF92lS10=; b=Q4wuyxowhvoSZJ
	GY2WoXgthYZjItwE1oLrd2EfEcetCOA7EwZ3azDptAVCz2EL5gJozur7JDbD50e2qPMTx7dkU1MGd
	lWSJkmpQsIL79B5PhLrSzy0Ku4giyEvKK30BtLxK+kBC4+MmkM4TzUCGfip7JnLc+/V+BQcq4ove7
	HZj/iv1+s18tOWHxzJ9xED+GOZxQi3X0ZzjOg6QCy4Of+i7WjC2HdoF+ZYgH9OPZvS8bgKr0925e8
	eBCk/hEOZgrmT+yal9ZipbUjytV3HVvVzpr8YdI8hoBK1omyo2gwcYg8+YF14AHDcg6a6lg8bkC3e
	Xetb/gXTU9t0h145sYow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOShl-00088J-U2; Tue, 14 Apr 2020 21:02:49 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOShW-0007yz-69; Tue, 14 Apr 2020 21:02:35 +0000
Received: by mail-ot1-f66.google.com with SMTP id e20so1231112otl.2;
 Tue, 14 Apr 2020 14:02:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1nuyaAjNqXWnHHUJzL2XAoGa0wH4Zq86LiHy6nqxsJQ=;
 b=SGaH/mk82EDwIrMIRBIWEO3wNZI1yqPuUe+oMV+XnQ9eAcmp1NkIhadvDED6EWwwpQ
 2PkOa1jGrTyMUw7bfijZ+mA4DC+HP6hXDbR7JJQgn++qIkPhDp4ICPkxZRPoWnD6lT0b
 KTG/zW4YyX05CQyNG/UquD2xYhRXSQh+w/OA3Mvig2wU4G45FiXZyF7d1MwdnMHzZY8j
 JzAbQH9IOg/ZJN8cvYa+2kA4U6GUkveFukMCxiDeRjxg2petDKbwwabJSWf+HC+Kss3X
 fYRcdPsnDppTmYuDSA1nX/KrFwY2lOK8R4oqwOr6LDM+QmmyZK9nMJzbwRESQ5T1gM1n
 stUQ==
X-Gm-Message-State: AGi0PuZ6yPovmXaDQkNObiVGjRZ3XfmI8pR9bsYLgPaLCNc01yfRE9Cq
 oV+abyxe7rX6WsArfOVotA==
X-Google-Smtp-Source: APiQypKapzYt9/7Q7GX3xQeCXyCjneXL8ofq3ZPCgF3NijaDtaMlETjB5mxGRQw13Z/0NIvx/NAIzg==
X-Received: by 2002:a05:6830:573:: with SMTP id
 f19mr11105288otc.195.1586898153253; 
 Tue, 14 Apr 2020 14:02:33 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s73sm1425254oih.14.2020.04.14.14.02.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 14:02:32 -0700 (PDT)
Received: (nullmailer pid 5278 invoked by uid 1000);
 Tue, 14 Apr 2020 21:02:31 -0000
Date: Tue, 14 Apr 2020 16:02:31 -0500
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v2 28/33] docs: dt: rockchip, dwc3.txt: fix a pointer to a
 renamed file
Message-ID: <20200414210231.GA5218@bogus>
References: <cover.1586881715.git.mchehab+huawei@kernel.org>
 <287bd271f5c542e9d12a132a6b6a17672c9fd67c.1586881715.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <287bd271f5c542e9d12a132a6b6a17672c9fd67c.1586881715.git.mchehab+huawei@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_140234_225304_9D23B6FE 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 18:48:54 +0200, Mauro Carvalho Chehab wrote:
> phy-rockchip-inno-usb2.txt was converted to yaml.
> 
> Fix the corresponding reference.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  Documentation/devicetree/bindings/usb/rockchip,dwc3.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
