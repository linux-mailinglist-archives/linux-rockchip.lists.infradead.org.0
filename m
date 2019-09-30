Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 975CFC29FB
	for <lists+linux-rockchip@lfdr.de>; Tue,  1 Oct 2019 00:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDA3vQTOs4kYmxJ1c+5YJPkKF/0KgAaLE+4KnesM6Uk=; b=Q2cOhpTu37jFpU
	DvcyrcS00PNF0ctnULsKKcNlHMAYg2aiczmcM3fpKxAkrjPSKIE9TU/YFTthJMsAbCS9Q567LmbpG
	gyq7gM6hdvl3jul3Eo9o2Y197jfWVgp1RmSJrXa+npf3wsKXkHz9uBk0StvbOFPNZrMjETpTHS4I8
	lGWMP9KrNbaepd/64xQ984id/E28Ox7hpqFeZ4JH9FAuqALzUnYMJUg0VlaLKR/r+3JDluR1Bl5HA
	5CiYuvyFa8uIpso9X6NG98S4feZhZIrGRT9zDbI+6g2EEG5umzceFLh9pqfNNNOQYjxkSB1O35sfu
	jW44XFbT0HiK1DJc1wwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF4UM-00075a-Oz; Mon, 30 Sep 2019 22:49:54 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF4UK-000752-45
 for linux-rockchip@lists.infradead.org; Mon, 30 Sep 2019 22:49:53 +0000
Received: by mail-oi1-f196.google.com with SMTP id e18so12696856oii.0
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Sep 2019 15:49:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PczlEvTcFQArjHB6+AobRiVj/8O0AsH2F+pyn4AkV9Q=;
 b=nwDHk45seLUzpD5EMzW1aQ2e5coHsaHwf8XXvcF4v+acmu77RVKDMyJFlSjrMqF/u6
 QAgPnGu7Iq3iGbwcWKtHrMldMBVnJ/k5510up0fqzV15I59TkEaAr7JbgSPmNC0UjE/p
 z6WzbWS/NsRW0Ud/7zNz9qGknbuMJYlYI5Q0Bwrf0x2thLWAysxkyCfjnaoyrs4ARmH+
 7ymQg3uTSjFMVPtOPmsTPkLAB5K65mF5OHDMmzfiqdV0Sjw1Xu20s4BeWec41N8voy69
 bkPRklJxvSpYivxvYATbCFlRsBBGQZmjIwUTBZExPUt4paYG+It1hkf9+lBkm2ybtTt6
 EERQ==
X-Gm-Message-State: APjAAAW9UbWvfotLCM37ZuqQUJIahYiZCuNkphFBCL7rFt2eY0/A2BAE
 Hg6jqc4LJiERCNAHccEw8g==
X-Google-Smtp-Source: APXvYqwTDeeH9jMNF4XEpuXW6/a8oSBcyxUotRCwupjdOMxLrSLEeTuiggY2bfZGFDq6quemIM81TA==
X-Received: by 2002:aca:4a50:: with SMTP id x77mr1296885oia.115.1569883791410; 
 Mon, 30 Sep 2019 15:49:51 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i13sm4391632otj.58.2019.09.30.15.49.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 15:49:50 -0700 (PDT)
Date: Mon, 30 Sep 2019 17:49:50 -0500
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] phy: phy-rockchip-inno-usb2: add phy description for px30
Message-ID: <20190930224950.GA32051@bogus>
References: <20190917082532.25479-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917082532.25479-1-heiko@sntech.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_154952_161660_B148B9DC 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 17 Sep 2019 10:25:32 +0200, Heiko Stuebner wrote:
> The px30 soc from Rockchip shares the same register description as
> the rk3328, so can re-use its definitions.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt | 1 +
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c                    | 1 +
>  2 files changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
