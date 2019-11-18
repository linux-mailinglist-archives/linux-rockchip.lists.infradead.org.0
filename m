Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4F5FFC92
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 01:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNrgfzDBoCFlxI/Ev9vZT4aRwuV3DDvlcTDIkBD0tnw=; b=XVxUjeU7/NogbH
	KRaVInqRnjSafN4+7w0X7kwRIfWSg/gJIfG/WNv0R/6sVyKmsHjkq+zVpaqkJJrR6M/BMCQo6MhSh
	aMugam20yuWkqTe8115nXWk+DIq0CxXeRaYTI38zG1T27j9Qv58qsfSlLUXznQWSz/y8BYpyrSmib
	IY0WSvKIptTuPCQwGjwdptyWkYihg0pJTe4NAGCg1o4Y7cL3oWZjiJBC470tzrZIvdthrquJ05u9v
	9HgbuDIBjaiwJn17zttSTTlhz27DpUJRr4OL9D6mcUkP6w5PKVbz6PdK/MMVCoKGd/vrMz5UuHSDB
	VwUB0JxJbY2aTTOLJivw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWVHZ-0004K6-1G; Mon, 18 Nov 2019 00:52:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWVHV-0004JY-Bo; Mon, 18 Nov 2019 00:52:42 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWVHT-0003fc-RB; Mon, 18 Nov 2019 01:52:39 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix NanoPC-T4 cooling maps
Date: Mon, 18 Nov 2019 01:52:39 +0100
Message-ID: <4249681.hKoAvgd4aH@phil>
In-Reply-To: <5bb39f3115df1a487d717d3ae87e523b03749379.1573908197.git.robin.murphy@arm.com>
References: <5bb39f3115df1a487d717d3ae87e523b03749379.1573908197.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_165241_636654_855DD7BF 
X-CRM114-Status: GOOD (  12.48  )
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 16. November 2019, 13:47:19 CET schrieb Robin Murphy:
> Although it appeared to follow logically from the bindings, apparently
> the thermal framework can't properly cope with a single cooling device
> being shared between multiple maps. The CPU zone is probably easier to
> overheat, so remove the references to the (optional) fan from the GPU
> cooling zone to avoid things getting confused. Hopefully GPU-intensive
> tasks will leak enough heat across to the CPU zone to still hit the
> fan trips before reaching critical GPU temperatures.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

applied, after little bit of editing.

>  &i2s0 {
>  	status = "okay";
>  };

although my nano-pc dts does not seem to have that &i2s0 node yet.
Did I miss a patch somewhere?

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
