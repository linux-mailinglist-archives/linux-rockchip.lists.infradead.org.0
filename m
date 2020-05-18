Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8ABD1D8ADF
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 May 2020 00:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hX1l2lzy7DMLnETW9u5TTQQLiIUKaChqIOYTyDPofZ8=; b=XrRCRxhrX3rOCV
	2zjAQB6sAMUAjR78oaXU4BO5iTs20ReS6T3VpmkOOFuKIKzB8fRDaw+IM7UISKdPTiQ/fULSyiew0
	A8yb9zr/KLyQaRaLJUsMWMVc8MV8EUOFvpQCsvUxl+qe1PwE3YNBAKgCsUcznwOAWg352OHErQSvn
	g0N8S+UKzRHQVkORjjnCrZFuV8D53n76hutLMfmx25srhM/WBMWFe3hUUOr+ZH7ftxLPKF3n4HGgn
	8q1fnn4NlIAjaMbJLetLLxWeSEZozR9ueww7gGqfhkQv962T0FCoMF/ilxySYAj7ZwjE2dcWbEirC
	sbzN0/7ukcGozQgMgE7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoGd-0001Vw-QD; Mon, 18 May 2020 22:29:51 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoFM-0000Et-J6; Mon, 18 May 2020 22:28:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=3bZ2nxKxwDKttIu2wOrF6Txu1MDw5R8z9054cWBvLsI=; b=kDT4X8CeAt/pL/8cOhjaZJ2DJq
 DjSmTTfpBz+t0g4mce1zJRLuj9FhnJpRgFwk2Q9farZSJmZCBQUgyDGyDv5aZyggVuEOTYNnqnb8S
 fFs+4LyzBAF5bJ1hPaZbNFuLPBztwELUUTvMFogG6ajPeX0ZnS8kIhrGUbj9m/Kl6nnWFg/4nMZJF
 qVeOfehtO9VlC7/bD0gUe7KEI13YOqM8lw5uE1dPjHcLAx3X2/wsUVUbzhFpxc69xAvKDU6fA0/VO
 IRtSc6eBQ7wB5i3p2RC6rqU0cPLUYApNP3O0Yf5ePDDPmw8Wb0plOdltLgEvu2v50pK873/7ZGeeh
 N7q9y00g==;
Received: from gloria.sntech.de ([185.11.138.130])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoFI-0004WC-81; Mon, 18 May 2020 22:28:31 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jaoEu-00005F-UX; Tue, 19 May 2020 00:28:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: fix phy nodename for rk3328
Date: Tue, 19 May 2020 00:27:57 +0200
Message-Id: <158984064169.2259329.11702578814361765317.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200321215423.12176-1-jbx6244@gmail.com>
References: <20200321215423.12176-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_232828_719966_62254F97 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 aballier@gentoo.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, 21 Mar 2020 22:54:18 +0100, Johan Jonker wrote:
> A test with the command below gives for example this error:
> 
> arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: phy@0:
> '#phy-cells' is a required property
> 
> The phy nodename is used by a phy-handle.
> The parent node is compatible with "snps,dwmac-mdio",
> so change nodename to 'ethernet-phy', for which '#phy-cells'
> is not a required property
> 
> [...]

Applied, thanks!

[1/6] arm64: dts: rockchip: fix phy nodename for rk3328
      commit: 8370cc5533b3baa5e0f18075ae638b050458aabd
[2/6] arm64: dts: rockchip: fix rtl8211f nodename for rk3328 Beelink A1
      commit: 63834d1edb96e2016191e53444934299bbc06bb1
[3/6] arm64: dts: rockchip: fix rtl8211e nodename for rk3399-nanopi4
      commit: b450d1c566bd726f93bc72a3cf3155cecebc1b75
[4/6] arm64: dts: rockchip: fix &pinctrl phy sub nodename for rk3399-nanopi4
      commit: 737157f9618b40c7147cf697aec431ce9dd178a0
[5/6] arm64: dts: rockchip: fix rtl8211e nodename for rk3399-orangepi
      commit: b2bb769100d49c6acbfb2756cc4748aac09209c9
[6/6] arm64: dts: rockchip: fix &pinctrl phy sub nodename for rk3399-orangepi
      commit: 302a729c84b59c835f7857ec378efecbda58b9b3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
