Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0187D174A82
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Mar 2020 01:38:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PD+78VQFFeGD+YJPl7DMfmjPVPAAfJXs2NIrE4jOrv4=; b=tF7qSZkinTJDRT
	hdaeKBlthkYirdLertY+lQZwpPnCq8kOpHfwNQqZ+/XAoeM4lo6kPYhUnsupfHeXckQKIRFbU+4TO
	cdlNDvDEjGyq+ap43efkWUXLsF3yc1ndK5QbxYnEotRZ1Cwvti11EqxeNdm54q+hB4bhcagD/C47I
	SJkJUh60X5M/CTjCeDeJsiwfQuexbQ8kecFwsLVVsApZA5jRVtuXLKxgZ0Id0LRTXlsCLD5TaelvB
	zIhEbgT+25cQbmBHFljtZeq+3wl0m6cGOYdAcBBk85wjYyndS2rdEquJf1lpNUOpcid+KfWOT3C/c
	L3iSBN96eOzv9ZNEuOLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8CcX-0000Jc-7J; Sun, 01 Mar 2020 00:38:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8CcM-0000BX-1M; Sun, 01 Mar 2020 00:38:03 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8CcI-00050E-Gp; Sun, 01 Mar 2020 01:37:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 1/3] ARM: dts: rockchip: Fix vcc10_lcd name and voltage
 for rk3288-vyasa
Date: Sun, 01 Mar 2020 01:37:57 +0100
Message-ID: <3357418.yJKWReClb3@phil>
In-Reply-To: <20200123134641.30720-1-jagan@amarulasolutions.com>
References: <20200123134641.30720-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_163802_228820_14AB2131 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 23. Januar 2020, 14:46:39 CET schrieb Jagan Teki:
> According to hardware schematics of Vyasa RK3288 the
> actual name used for vcc10_lcd is vdd10_lcd.
> 
> regulator suspend voltage can rail upto 1.0V not 1.8V.
> 
> Fix the name and suspend voltage for vcc10_lcd regulator.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

applied all 3 for 5.7
[added a missing blank after the regulator in patch3]

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
