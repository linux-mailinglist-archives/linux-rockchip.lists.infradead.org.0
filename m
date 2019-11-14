Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A771BFC2A8
	for <lists+linux-rockchip@lfdr.de>; Thu, 14 Nov 2019 10:33:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0pvaGyhzW8IbpZYDV+3IxBtEVOa/JwnDiudOMR1OOk=; b=FjWDQbH/amERW2
	R/UWXdckQzM71QRELsUf0G3eAECCtmw933vhcjO3BUFk/1cuwTaiCgVfdPhMxkZx0E1sl5RZkCOuK
	D5+smlGxZMSgcJLO5phpD1vatz76/0fsCVXlh3ZJR5aqTydhT/4BTYvaf73vh9KcVtiR5eBHZ6Lkv
	qB6ZnDF16bQvsLorzznSjoU69Cfy9XFE3D2R3Z9LlZobyTxUHEzyp2E1mNA6U9YVbmeN8DPWdlowt
	w3x30s9EVYx9a07InkuAa94ECTRSzcZgwz++8hi2CpyxCYm0StVz7FGbwbiFJozDFjrmRhIbkwB57
	tr8Q+FapuXJJ6uBHJDkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVBUs-00068r-Dh; Thu, 14 Nov 2019 09:33:02 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVBUo-00067s-W5
 for linux-rockchip@lists.infradead.org; Thu, 14 Nov 2019 09:33:00 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9CDF9291544;
 Thu, 14 Nov 2019 09:32:57 +0000 (GMT)
Date: Thu, 14 Nov 2019 10:32:55 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v3 3/3] media: vidioc-enum-fmt.rst: clarify format
 preference
Message-ID: <20191114103255.0f14ce70@collabora.com>
In-Reply-To: <20191113175603.24742-4-ezequiel@collabora.com>
References: <20191113175603.24742-1-ezequiel@collabora.com>
 <20191113175603.24742-4-ezequiel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_013259_159428_E44AF74A 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 kernel@collabora.com, Chris Healy <cphealy@gmail.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 13 Nov 2019 14:56:03 -0300
Ezequiel Garcia <ezequiel@collabora.com> wrote:

> It has been decided to use the ENUM_FMT index value
> as a hint for driver preference. This is defined purposedly
> in a very liberal way, letting drivers define what "preference"
> means.
> 
> For instance, the Hantro VPU driver indicates additional
> processing to output a given format, and thus implicates
> more CPU usage, which is enumerated after native (non-processed)
> formats.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  Documentation/media/uapi/v4l/vidioc-enum-fmt.rst | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst b/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
> index 399ef1062bac..8ca6ab701e4a 100644
> --- a/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
> +++ b/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
> @@ -44,7 +44,9 @@ To enumerate image formats applications initialize the ``type`` and
>  the :ref:`VIDIOC_ENUM_FMT` ioctl with a pointer to this structure. Drivers
>  fill the rest of the structure or return an ``EINVAL`` error code. All
>  formats are enumerable by beginning at index zero and incrementing by
> -one until ``EINVAL`` is returned.
> +one until ``EINVAL`` is returned. If applicable, drivers shall return
> +formats in preference order, where preferred formats are returned before
> +(that is, with lower ``index`` value) less-preferred formats.
>  
>  .. note::
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
