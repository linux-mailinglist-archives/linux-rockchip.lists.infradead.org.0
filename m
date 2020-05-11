Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8000A1CE78C
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 May 2020 23:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BO/FVJEy8oRNu0oNRbmJcQidbCcswyEOVdk+lhrTLCk=; b=qfND/Nx1aWzper
	GJn1OSrSHahATuDVR/69R7Pc0PXW92r7FiRtyTQjFF7IpRFRQlffoN++i/GsbRhkdXCs6cPxL2rle
	GgDL38KUtjcaDUQyMBy/L9g5F1HfQnl0OF4Y8Mf2fzJS1M21Wa9tu+uLq7Rw3mJdvZmi9sCz1kaad
	MMt3Fv9DsIuEPrSBYLxxr+PoT4Hkuv5rjIh8DenLfQR+EfiRzyjnTfN22SBVqeq2Fg66qS5iVCHQr
	DfrCvl/lhizznE6DwgghfSu1gkfrSeGMsgqXz9Y4V93eBX/qzcbnmivLd4HSlvJ900Azz4jFxzGUi
	DImB+6BvnzEzsNMKexIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYG5y-0003tt-0f; Mon, 11 May 2020 21:36:18 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYG5o-0003nD-Jh; Mon, 11 May 2020 21:36:11 +0000
Received: by mail-oi1-f195.google.com with SMTP id j16so16427515oih.10;
 Mon, 11 May 2020 14:36:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FjgEarEiw8gpO2P3GZKZGo+NkDIbuBcwR3XmcT/vJlk=;
 b=Ki3oY055n0x3/s4VLFe9nWHP3wF+YTGU8dWAgQwYVku6utafISTRlTJ01a+TlS5ulI
 ZsrKB+Bf4OhUn57PAklL6qryvFx7hcOcqBiO9+Lx2ZNyq1ekZrCSxl7hFcLi5ONWhp7I
 ia8DGOxxqZDoBNMUdEav5ElRCIcBHjGQDiNSybUkNQHYb23OKSsFvWbQ9XXBnDz8iniB
 62oIl3G0/VqgdxuTyABPMcPPLJNJlYeoFUJJC5eH6b5COWGAiYspehTSYstWkLhWm616
 loJea97OS5WUTvElG25wPqYAwlVOb6jJCbX0QGCiy8fLvCAKrgZoxtqva8Ei9nYO9gJq
 HQNw==
X-Gm-Message-State: AGi0Pub4BMne7DNz4AL+iXQHd4UxylhB+rqG2SGwAFxbmeGoEi6NEjq0
 Lncwd7+hwFMLUTyDWvVMAQ==
X-Google-Smtp-Source: APiQypJVxHvagye2SWlcA4PbLnWPYs5aNGR2f4pg1Hg11puPuSBuWPVLc2xQed2Ra6zvS+x6U10Cgg==
X-Received: by 2002:aca:b6c2:: with SMTP id
 g185mr21124643oif.156.1589232967266; 
 Mon, 11 May 2020 14:36:07 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r21sm2935693otg.67.2020.05.11.14.36.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 14:36:06 -0700 (PDT)
Received: (nullmailer pid 20619 invoked by uid 1000);
 Mon, 11 May 2020 21:36:05 -0000
Date: Mon, 11 May 2020 16:36:05 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] include: dt-bindings: rockchip: mark RK_GPIO defines as
 deprecated
Message-ID: <20200511213605.GA14679@bogus>
References: <20200424151105.18736-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424151105.18736-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_143608_648457_6426797A 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 05:11:05PM +0200, Johan Jonker wrote:
> The defines RK_GPIO0, RK_GPIO1, RK_GPIO2, RK_GPIO3,
> RK_GPIO4 and RK_GPIO6 are no longer used. Mark them as
> "deprecated" to prevent that someone start using them again.

What changed exactly? The binding changed, or just using raw 0-6 instead 
of the defines? 

If there's not anything using these in tree, just delete them.

It is still used in the binding doc.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
