Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 638B08ED7F
	for <lists+linux-rockchip@lfdr.de>; Thu, 15 Aug 2019 15:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQonoq+0LFgyXVhoGo3hEiv8WmmzT8TODqH/FODg9zI=; b=nnt7ByDfrpuM16
	v0e0hxDU+zMDnrYST08Kfi9Tbr2DWGKBLhHdmYFiJ3V1cN6vBh2bgwl821897XX3X+lI3yUFBta0p
	iIX6dkuKFp4FlNwGwsheKMs04PuSKaH0/wkpJOujZf3JlVJLwMKRzGD8uWhju9kzXZYMcllIafPk5
	UisBqeMSO6kSkx8TLSZo5oKRtQw4vFTp9K1Stazb0mUU6WCwHjcZytJS/NetqEuFOsOtxe5HavWtA
	jDDvIKJ8yYo42GxsFze3FgDfDsLEjHhxQfqQOYxkfOP7Sl9r61cBDPNQfko/xQRo7vnAuUrpDRyx5
	9xgPa3WHoK2awKihNm6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyGFV-0000Ip-VH; Thu, 15 Aug 2019 13:57:05 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyGFF-000085-8X; Thu, 15 Aug 2019 13:56:51 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 92D862AF;
 Thu, 15 Aug 2019 15:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1565877406;
 bh=+znBB1qxlpkl1VQ3xwg9po9anFFiiOOPe/FD9geVKKY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L2Def8pd2B7+o7xJuCGOdegyMwnBrfp4zslYsGWuPvZyEykkt1EtWe0HMw4mcvmr5
 uQtmj56sGIVUJjm/jUWSkijYOFuT+J56bkA1uNWCxWD+6BIaoSVu+WVXOFtnQMajsf
 34jNMFPWS2jHgykQ7h4O1gUcah/ltNPuxGDlChX8=
Date: Thu, 15 Aug 2019 16:56:43 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v8 14/14] MAINTAINERS: add entry for Rockchip ISP1 driver
Message-ID: <20190815135643.GV5011@pendragon.ideasonboard.com>
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-15-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730184256.30338-15-helen.koike@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_065649_451658_8E2C6C62 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, jacob2.chen@rock-chips.com, jeffy.chen@rock-chips.com,
 zyc@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 sakari.ailus@linux.intel.com, zhengsq@rock-chips.com, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Helen,

Thank you for the patch.

On Tue, Jul 30, 2019 at 03:42:56PM -0300, Helen Koike wrote:
> Add MAINTAINERS entry for the rockchip isp1 driver.
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> 
> Changes in v8: None
> Changes in v7: None
> 
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 6426db5198f0..7f38abcb4114 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -13743,6 +13743,14 @@ F:	drivers/hid/hid-roccat*
>  F:	include/linux/hid-roccat*
>  F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
>  
> +ROCKCHIP ISP V1 DRIVER
> +M:	Helen Koike <helen.koike@collabora.com>
> +L:	linux-media@vger.kernel.org
> +S:	Maintained
> +F:	drivers/media/platform/rockchip/isp1/
> +F:	Documentation/devicetree/bindings/media/rockchip-isp1.txt
> +F:	Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt

This is missing the include/ files and the custom format documentation.
Apart from that, I'm happy to see that you will maintain this driver :-)

> +
>  ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
>  M:	Jacob chen <jacob2.chen@rock-chips.com>
>  L:	linux-media@vger.kernel.org

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
