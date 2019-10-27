Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A61D1E64D3
	for <lists+linux-rockchip@lfdr.de>; Sun, 27 Oct 2019 19:19:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDEUUtpfso76kcP29gSSdQ8N9bh7QprHtbZrWsivJvQ=; b=hmgq7y94rDGYqV
	XxWeBOjSVAkOOLEFqBJDN4J0DOzuRKzNkYcF01ErTvANJaL/2kqZeLk6vdy61nyRcffwM0LCk6Vfy
	Nk8Cx5y7cAtaaUvKcytYY+e7g0dIvKDNbsSpW2ZFj/g3sDMT15iqvnVoV0l+9xC0PXZrN64wtdfjQ
	6tlTNduEpsNbJj0z59DJuClgXYicMq+Jr9u+kFkjUXfDlNXxTCP8LmUi4iSzSZ8/wKGIhpGO5C1Vj
	pJvPSahDRl7SK2HRoDeqNrTioXkf0UBmi7FQH8ODuvt+y5DygT4oyQPJ03byJQ/lBP4lmwFzXgI25
	/eckHkWFIJUsSgX8zrtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOn84-0008Iv-IZ; Sun, 27 Oct 2019 18:19:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOn7o-00088M-Vu; Sun, 27 Oct 2019 18:18:50 +0000
Received: from [46.218.74.72] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iOn7j-0008Gg-Pf; Sun, 27 Oct 2019 19:18:43 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add LED nodes on rk3399-roc-pc
Date: Sun, 27 Oct 2019 19:18:37 +0100
Message-ID: <4966121.jNSStvosxs@phil>
In-Reply-To: <7d8d85c9-5fde-7943-a6b6-639bca38bdc1@fivetechno.de>
References: <7d8d85c9-5fde-7943-a6b6-639bca38bdc1@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_111849_176954_FBA15E23 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 21. Oktober 2019, 12:24:36 CET schrieb Markus Reichl:
> rk3399-roc-pc has three gpio LEDs, enable them.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.5
git am choked a bit on your inline signature though.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
