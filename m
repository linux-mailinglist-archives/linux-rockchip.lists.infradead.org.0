Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1D91FC8F5
	for <lists+linux-rockchip@lfdr.de>; Wed, 17 Jun 2020 10:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AcT/VahrNuWTndCIRuK0ly90KwJ9dYX8dOADDq1WyA=; b=SH0i3223p7w/ou
	LKScuI9XlZMmQ2e4YkDATgV5FKHWap+gU9oA4y00AqDRJNzI3Gcesby4BGCEMnhR/Pz5WPl2MJOhe
	MDu6YRv7L7FIq0gWhfr9CzCe3z1/MzxW0UVZREW/EyLdJKWem4lEEzJes+itTXJVSMw2z2W9pikby
	7FcQFwaYAmQb/t2lSfhVKJlmp3uMpdSPG+Twvem9zl7OyUr+T406tv26wj8tl15cUaF1hk8lkvPNu
	cZuTqVsqF6Q/Sx/2Z0JkmxhPsuCtKs81EMaKNjl7+n2IXwej8tVI7CNAyfBO6fQysUeaTuRt5/UQs
	qfzNOF8eBsqeX+yWNUQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlTaR-00025Z-F8; Wed, 17 Jun 2020 08:38:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTZK-00011j-Tn
 for linux-rockchip@lists.infradead.org; Wed, 17 Jun 2020 08:37:16 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jlTZJ-0005rL-9s; Wed, 17 Jun 2020 10:37:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH 0/1] Add fuel gauge to Pinbook Pro dts
Date: Wed, 17 Jun 2020 10:37:10 +0200
Message-Id: <159238301927.1406601.17225470584885012496.b4-ty@sntech.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200528172550.2324722-1-t.schramm@manjaro.org>
References: <20200528172550.2324722-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_013714_970087_E7C6AD0E 
X-CRM114-Status: UNSURE (   8.05  )
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
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 19:25:49 +0200, Tobias Schramm wrote:
> since the cw2015 fuel gauge will be supported in 5.8 this patch
> adds a node for it to the Pinbook Pro device tree.
> 
> Best regards,
> 
> Tobias
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add fuel gauge to Pinebook Pro dts
      commit: c7c4d698cd2882c4d095aeed43bbad6fc990e998

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
