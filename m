Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B18E1F6B8A
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jun 2020 17:51:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kW4zlEqeZaSFThsWIED1+H6ggU4Y5tcgxF5vWq4bvbA=; b=nHAZ3lgkmUsKDE
	6cX4DLWI0VLixP5C7hEgbGHAflRY4CRy06GmeLSpgke5qy4FDJGHgDeBpp9TBxmeLIXecDw7c16yk
	l40Zzq6Mj16JD1SlsjkUxcrs66pRQcyQXuJgNAW5fR9SwwA2bA8Utl2wYqMNfgQtJX6hDeYVqXlEO
	Qu2mfWrzzec9WLZHJpxw7YIcS5ZsS9XFmFKqb0NXJ0WfxXeZbH6COu347n7K9uwjBCWqd95EzZAG+
	8zn7GdkFsxtrecTSdPhHL4RQLRJPv6ob6b+rxaur2kNN1cVYbUdnJm5R8yrWmu783Cf+WDU/AusiA
	qejDzRiR8TxCEpk5Bsvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPUD-0004N9-DK; Thu, 11 Jun 2020 15:51:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPU9-0004M3-DY
 for linux-rockchip@lists.infradead.org; Thu, 11 Jun 2020 15:51:22 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DE2F2075E;
 Thu, 11 Jun 2020 15:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591890681;
 bh=hA8crjb1+eO8Ik/FhkrnD4BD1as2cXO76+YuSd8DasY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kf4wzQ/QSq468OsTOk9YbxdS+jLbXLI10PegVvY9Uxs45MurykHl2eAaIL6vR1W/E
 DeQUUvldiASxJmzNYayh2XTfVOfiQPZudOASBj2bjGpQyMLUjn9Ft4efKR37EQkzyJ
 eXBIBRk+5lTShKQQQhLDNPMMzYX6sC64ivTY5aM8=
Date: Thu, 11 Jun 2020 17:51:14 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [RESEND PATCH v3 6/6] media: staging: rkisp1: common: add
 documentation for struct rkisp1_isp_mbus_info
Message-ID: <20200611155114.GD1456044@kroah.com>
References: <20200611154551.25022-1-dafna.hirschfeld@collabora.com>
 <20200611154551.25022-7-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611154551.25022-7-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_085121_475397_497A9730 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mchehab@kernel.org, dafna3@gmail.com, stable@vger.kernel.org,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 05:45:51PM +0200, Dafna Hirschfeld wrote:
> Add documentation for the struct rkisp1_isp_mbus_info with
> one line doc of each field
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 13c5eeff66f3..6104eddac0e5 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -268,6 +268,19 @@ struct rkisp1_device {
>  	struct rkisp1_debug debug;
>  };
>  
> +/*
> + * struct rkisp1_isp_mbus_info
> + *
> + * holds information about the supported isp media bus
> + * @mbus_code: the media bus code
> + * @pixel_enc: the pixel encoding
> + * @mipi_dt: the mipi data type
> + * @yuv_seq: the order of the yuv values for yuv formats
> + * @bus_width: the bus width
> + * @bayer_pat: the bayer pattern for bayer formats
> + * @isp_pads_mask: a bitmask of the pads that the format is supported on
> + */
> +
>  /*
>   * struct rkisp1_isp_mbus_info - ISP pad format info
>   *
> -- 
> 2.17.1
> 

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
