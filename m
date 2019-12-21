Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710DD12891E
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 13:58:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tez6gPQhnpNCd2nWKKgQr2PN6s5gpx0/Fp2Xz8BPtDQ=; b=PwXRFdO5TsJ9Qy
	tVxxO7p/Y2RVIYXj6LuCru6fHzL967pyvoTVbjHrfFFGKJeQTnk/b9dBnX0exsRr39IHvacJVrsxr
	NB8QZPE2yzvCkqBolWAB5AfJ1bckcNyDwwDEptriQQVZvlmstFvqGHWVoqmjoa81HxVZE28hhNbg2
	oBA2wb6i9F+y4WSFdININck2HPb3zGCEYn1gZOPCHr1VG5uSxSLQBwmUb7UOM+nyJTppM8kojiU8A
	U3shjQHK6lacMclkcCSAEMjGqDNgGW3canR50QWKuj+o5E8PHVtCJgFb9GyKn3JH5kFhIuA4fqzJQ
	6xmL04fySD7IGsBqZUKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iieKX-0000Gl-Hp; Sat, 21 Dec 2019 12:58:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iieKK-00008x-Or; Sat, 21 Dec 2019 12:57:50 +0000
Received: from [195.37.15.138] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iieKA-0004xy-4C; Sat, 21 Dec 2019 13:57:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Thomas McKahan <tmckahan@singleboardsolutions.com>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Enable PD for USB-C-Port on
 rk3399-roc-pc.
Date: Sat, 21 Dec 2019 13:57:37 +0100
Message-ID: <2330032.fiRFtybceW@phil>
In-Reply-To: <84920a36-230f-42a6-a960-a71e685be99f@singleboardsolutions.com>
References: <678df227-38be-47af-7ee3-741a391a196c@fivetechno.de>
 <84920a36-230f-42a6-a960-a71e685be99f@singleboardsolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_045748_960225_CB130E1E 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 narmstrong@baylibre.com, linux-kernel@vger.kernel.org,
 Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Thomas,

Am Donnerstag, 12. Dezember 2019, 16:46:09 CET schrieb Thomas McKahan:
> Hello Markus,
> 
>     I have been working with this as well, came across it on Armbian. I was also trying to eliminate the warning concerning the lack of port with limited success.  I also missed the interrupt pin definition I see.  I will test this later today.  

Where you successful in your testing? My type-c exposure is somewhat
limited so it would be nice to get another opinion ;-)

>    I've added Neil Armstrong for information in case any boards on the Amlogic side are similarly configured, I think a few other Rockchip ones at least are missing connector nodes, it appears to be a consistent issue presumably due to driver changes.

The whole type-c topic is a somewhat undiscovered country on rk3399, due to
the cross-ec hooking rk3399's type-c components. (see the cros-ec-pd extcon
going to the rockchip type-c phy etc).

This is presently worked on so that also everything can at some point use the
kernel-internal type-c framework.

But of course this doesn't hinder configuring the power-develivery in the
fusb302 ICs already :-D .


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
