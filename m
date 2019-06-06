Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A883371B3
	for <lists+linux-rockchip@lfdr.de>; Thu,  6 Jun 2019 12:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q82QE3cT6Tikdt9hrhX+nq9f+66x36UFI8QXnJPucz0=; b=b0ybX/zCd8HrSV
	fTS2mN5E5RLLOrWte75QblFSTJF4RFrWDE4YFvhczQQlyvBv7MMiOPpFzK3jDaXSW7FgbQHHtFXgB
	6jz6AlPEX/zgKIE6nBF9GcQk76kXf3Tt23Zsi2MUXnCjZ29gcPevn/d/gCJ7tLw+QgFLXl06bQcRN
	z7Pz5r9Pf0vAur3fvjyD6YlzO67PDsuCX4/8Pvur+oJ3vbHzD1OIRZz23hD+vLvrnqu/u1B+pi+k5
	R1pu6mNTkkUACKt0kTAl2rg59cuJbOHs9iN/6C3z+MN2TqpOxt4FNuKONBiLxxw+zcJUe9yUyV+W3
	smb5WreDdC5BcpbEvdiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpdu-0008Rh-Kj; Thu, 06 Jun 2019 10:29:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpdr-0008Q4-7v; Thu, 06 Jun 2019 10:29:08 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hYpdY-0003d7-6L; Thu, 06 Jun 2019 12:28:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 3/5] ARM: dts: rockchip: Switch to builtin HDMI DDC bus on
 rk3288-veyron
Date: Thu, 06 Jun 2019 12:28:47 +0200
Message-ID: <1843069.a0lnjFrhvD@phil>
In-Reply-To: <20190502225336.206885-3-dianders@chromium.org>
References: <20190502225336.206885-1-dianders@chromium.org>
 <20190502225336.206885-3-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_032907_427814_A00DD6A0 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Neil Armstrong <narmstrong@baylibre.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 3. Mai 2019, 00:53:34 CEST schrieb Douglas Anderson:
> Downstream Chrome OS kernels use the builtin DDC bus from dw_hdmi on
> veyron.  This is the only way to get them to negotiate HDCP.
> 
> Although HDCP isn't currently all supported upstream, it still seems
> like it makes sense to use dw_hdmi's builtin I2C.  Maybe eventually we
> can get HDCP negotiation working.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied patches 3 to 5 for 5.3

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
