Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61EE1FC8E3
	for <lists+linux-rockchip@lfdr.de>; Wed, 17 Jun 2020 10:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUSx4KGEKmR8uktCpIEew0wX17jKjCvp9ovaZ9savy0=; b=IeJpHBqhP+IVmD
	VF+/sq3Ee+P3a0mKnXtDefJxPwJZboizHN13TrqC9j207MoKO9z5uMGPpz1XxyoWTazmaO+iQl0WM
	YEt110XxsAg3ANbFKaZ2tOD4yqqSruFqsDKeveNjrmXS+M4x2gmIz4ikbbxXNKu5mxrSQfWXKMFEU
	MFdVAyuvVAzHW/bRn/qY4y4BKmTaPwPaoojdDAk3MZSxLg/DuLk3xbtKGKGwCFc56DM8tIito1Zq6
	hmUCRINusHhGO5ImwdpG4F02eCcpdc2HnGKXeCy/dOMhAooLUhgaqZgt2kYkQPqETxcEmk1yg/EMW
	fwNychc2YOMlneW4qmJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlTZM-00012P-2s; Wed, 17 Jun 2020 08:37:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTZJ-00010u-HU; Wed, 17 Jun 2020 08:37:14 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jlTZH-0005rL-Ua; Wed, 17 Jun 2020 10:37:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3368-lion gmac reset gpio
Date: Wed, 17 Jun 2020 10:37:05 +0200
Message-Id: <159238301927.1406601.9956183510876870851.b4-ty@sntech.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200607212909.920575-1-heiko@sntech.de>
References: <20200607212909.920575-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_013713_579177_BAF32CAC 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 klaus.goger@theobroma-systems.com, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sun, 7 Jun 2020 23:29:09 +0200, Heiko Stuebner wrote:
> The lion gmac node currently uses opposite active-values for the
> gmac phy reset pin. The gpio-declaration uses active-high while the
> separate snps,reset-active-low property marks the pin as active low.
> 
> While on the kernel side this works ok, other DT users may get
> confused - as seen with uboot right now.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix rk3368-lion gmac reset gpio
      commit: 2300e6dab473e93181cf76e4fe6671aa3d24c57b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
