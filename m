Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24600131166
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 12:26:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZBroA3Yi6r5VUe9Qe1gxn2sADk9mF1co5GxOewNS1M=; b=X+VacA/Ffch6hX
	yxTWm7uqff2UYj5KXXJG4aTfv975zjT0+32Eu4TGB6K2wx2ICSiv9CT6fTM7nSsoRAkdVFQEFOnKj
	ROssk9TxjWlTXukTlAK5Ghh+wpB+5p0PcdVLQe69fFqOvD+TyWW+lkchZuAy5aVyqE/Oqxjh9Wc7H
	q7oplS3WZWNcLxT0gulMzW1/Wxvs6FxDpMeQCQRfCmZBC+rSCHf4G94IDaNqnE20r+vcOMntIFm1k
	NqfzyTYXRRDb60lGrL75m6/MV9PjvADsK38OKxVRAHNmE1Fm7B+KU1i2fBq5FwgJZgXWjmGzd5GBI
	WRwEq9TxZCQmepT+DpIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioQX2-0003pd-J1; Mon, 06 Jan 2020 11:26:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioQWt-0003hq-NI; Mon, 06 Jan 2020 11:26:40 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ioQWp-0004cC-Ix; Mon, 06 Jan 2020 12:26:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] drm: rockchip: rk3066_hdmi: set edid fifo address
Date: Mon, 06 Jan 2020 12:26:35 +0100
Message-ID: <6562118.EOOupxtdqP@phil>
In-Reply-To: <20191211203417.19448-1-jbx6244@gmail.com>
References: <20191211203417.19448-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_032639_908736_8017800A 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
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
Cc: airlied@linux.ie, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 11. Dezember 2019, 21:34:17 CET schrieb Johan Jonker:
> From: Nickey Yang <nickey.yang@rock-chips.com>
> 
> Fix edid reading error when edid's block > 2.
> 
> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied to drm-misc-next for 5.6

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
