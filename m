Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA04138DC8
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 Jan 2020 10:28:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGfcfDO/uwPlNtnLOpK4f2lvp+bEeF1NXV6y3Yq322g=; b=Cv+0XYVqaIUSxu
	Ytrh5vOcNBkXu7KVzTCr2wWq+KtQ7rB4yfakNd8Tt5ocYcmwgHm2bCn2hyxJR34KX7wzZemB3d0hp
	mEjZwHehE5CjtuebqKBCuDd7t3wbCu+ThkTQRbiRqeUjZoh3pzhUWqfZyo1ZwAsy+Bc1wajRyjtx/
	eQQR7GGdvOvp6uOOpBVzauWgVALjElULMW3wyz+++pG6/QZNZ08kl9iRgwQK0RB70slrC+kEHTIoh
	rwlyG/TiI9iKy1yGZyyYF4+w9N/rIn8PMZPabZ0gVaEDJhiZiMJrX+TlARxmcoq9hRZDsoaUzTWXq
	2XVRiO8/vrG2tnYPQ9SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqw1g-00011z-3g; Mon, 13 Jan 2020 09:28:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqw1d-00011N-CA; Mon, 13 Jan 2020 09:28:46 +0000
Received: from wf0253.dip.tu-dresden.de ([141.76.180.253] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1iqw1Z-00021m-Ph; Mon, 13 Jan 2020 10:28:41 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [RESEND PATCH 3/3] arm64: dts: rockchip: Enable sdio0 and uart0
 on rk3399-roc-pc-mezzanine
Date: Mon, 13 Jan 2020 10:28:41 +0100
Message-ID: <7106354.sWKCicHN03@phil>
In-Reply-To: <20200109154211.1530-1-m.reichl@fivetechno.de>
References: <20200109154211.1530-1-m.reichl@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_012845_563646_020E574F 
X-CRM114-Status: UNSURE (   9.00  )
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
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 9. Januar 2020, 16:42:10 CET schrieb Markus Reichl:
> The mezzanine board carries an E key type M.2 slot. This is
> connected to USB, SDIO and UART0. Enable sdio and uart0 for use
> with wlan and/or bt M.2 cards.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.6

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
