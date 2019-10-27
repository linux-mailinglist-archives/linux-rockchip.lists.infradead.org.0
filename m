Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3DFE64DB
	for <lists+linux-rockchip@lfdr.de>; Sun, 27 Oct 2019 19:22:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RcPNIVGgHp+2kCRMSaAuDe21ClESa711vSPTXxCxCQ4=; b=XuDuW+yw7lcZdy
	cIlKkT4z8mtPTtvd7glKN/FgCuT+gQlRGRybkj2Xta5XptK2mqRUiIPWb6yMEVbFXrhC1ntbDeet7
	y9KA8brfHeCS1e4FfgP7HkhTaSlcNFmg+zHZkYZh31TH701lj1KRWQ1gdHhgT53VWsByFOtvuSHR3
	UhsxCBhMWB4TBJcF6a6bcq62gxV7/C/KPdK60Hb7nhMx59vPX/o9pluzy93gnPY9hCP/jI7oY6vCy
	lU/z821u7Gp1AkVZEdr/Dsnq2X7xTq2Unpl20Kr6y+qipb249OR89Wv79ArTXq4h/5O8DBrK7m0Nn
	3oAAiAhk7xsZ8vjVHq7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOnBX-0001WJ-Nz; Sun, 27 Oct 2019 18:22:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOnBG-0001JO-Jg; Sun, 27 Oct 2019 18:22:24 +0000
Received: from [46.218.74.72] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iOnBF-0008He-9y; Sun, 27 Oct 2019 19:22:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable gpu on rk3399-puma
Date: Sun, 27 Oct 2019 19:22:02 +0100
Message-ID: <7251662.sC0l0EPzFi@phil>
In-Reply-To: <20191023223954.3139-1-heiko@sntech.de>
References: <20191023223954.3139-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_112222_791237_1BC42008 
X-CRM114-Status: UNSURE (   7.97  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 24. Oktober 2019, 00:39:54 CET schrieb Heiko Stuebner:
> Set the supplying regulator and enable the gpu node on the rk3399-puma som.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied for 5.5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
