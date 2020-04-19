Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 916D91AFA17
	for <lists+linux-rockchip@lfdr.de>; Sun, 19 Apr 2020 14:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHK5khm5rAVjmms6T8st32tdIkTu7b2YhV7SXITvVb0=; b=K2F7rFVkr8r12j
	2vJzY5AnqhvyybNmxte/JbCwn/9SxUZ/ZuIHT1LKoTGrRmojer2hI086+p8B6aX1OtfsAvQRIDaFh
	NRTXeoNhzV5bLmR/kaU0rtbfwKc3B4L0+cUrYrCalrBPhY12pNZOSAkHwRvkFD+KlBh43SV0JzrnN
	eEVolKQ+Etbh4tuCFPYz50vc6eY+ef+4DDODqhOEw7WXos3/AkIB1xEbVFLQjhOWrYLuZHa7vVuna
	g6E+5rYtsh3wJyMC51suo6jdjwTZwOkW3sfH3YYWjjS+XpN+396Fz4PqbNLJgAOdk+IBdvlfxMAyt
	NlIxRjv/uQeMHcbJoSkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9CL-0003eR-6n; Sun, 19 Apr 2020 12:37:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9BG-0002jJ-3B
 for linux-rockchip@lists.infradead.org; Sun, 19 Apr 2020 12:36:15 +0000
Received: from p508fcedd.dip0.t-ipconnect.de ([80.143.206.221]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jQ9BB-0006k5-QT; Sun, 19 Apr 2020 14:36:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add micro SD card regulator to
 rockpro64
Date: Sun, 19 Apr 2020 14:35:58 +0200
Message-Id: <158729964647.70529.2619682470015783245.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200416145534.1263575-1-t.schramm@manjaro.org>
References: <20200416145534.1263575-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_053614_154624_AE784AE2 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020 16:55:34 +0200, Tobias Schramm wrote:
> This patch adds the RockPro64's micro SD card regulator to the
> RockPro64 dtsi. The regulator is present on all revisions of the
> device.
> Previously the regular was missing, resulting in unreliable boot
> behaviour when booting from SD card.
> 
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add micro SD card regulator to rockpro64
      commit: 1f5a3e1679353fb53e955afd8801a7f4f60877ff

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
