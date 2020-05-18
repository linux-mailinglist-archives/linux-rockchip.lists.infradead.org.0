Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1ACA1D8B28
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 May 2020 00:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3Nu0ciEpx1YtoJRK6gvQ9eoMyrJLi6TXvi2mNce3gY=; b=aen13R1OqjtEI8
	KCt0sZBMmaL3R+29W8LEyG6ZzB6oA37QcJ3d5tWsEKhCNvMjDgFpDxOvF6WuGxZjRveadTcFMEIt6
	GBjpNugE1GGaHbHqvNNVQy8vDVnRQ45AsOg9XSWmDTNx9EeaYQ1fU5wlkzkaazvjW2N0poze5iEsG
	gRqaf+sizvqjwCVxzbEUN7tZFey+Pnp2kQsAvT/XCr42RuSNc0r3GipTWgq9lgVQ77JrZmIMrigQ6
	WhnaBkarAJypGraFf6qELbRsDvKJ2TxINSPmA8EzALIjxDXd23xQG18s+9OiqAd2y1GmqdyiarW8C
	uEbU03mgfg1aAnEEupUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoTm-00045v-B9; Mon, 18 May 2020 22:43:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoT3-0003PT-T3; Mon, 18 May 2020 22:42:43 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jaoT0-0000DN-Uw; Tue, 19 May 2020 00:42:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add bus-width properties to mmc
 nodes for px30.dtsi
Date: Tue, 19 May 2020 00:42:37 +0200
Message-Id: <158984175365.2264243.14630667398753198315.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200416183053.6045-1-jbx6244@gmail.com>
References: <20200416183053.6045-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_154242_084578_E113151C 
X-CRM114-Status: UNSURE (   8.92  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020 20:30:53 +0200, Johan Jonker wrote:
> 'bus-width' and pinctrl containing the bus-pins
> should be in the same file, so add them to
> all mmc nodes in 'px30.dtsi'.

Applied, thanks!

[1/1] arm64: dts: rockchip: add bus-width properties to mmc nodes for px30
      commit: fb0ab17f1ab750d9662ec6b9fb3aa541a8ac1f5c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
