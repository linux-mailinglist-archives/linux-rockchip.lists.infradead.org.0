Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236941FB04C
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jun 2020 14:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lscygyd0FvoetIV2fm5KLXvpZDHPZBn4tHM4G5c607w=; b=okqxw+QApthr6y
	hLGk7MAhVSrkpz8ArrEYQ9/RSdCvTfaeOP+/8+3YMi4sw9FwglLw7Oioj45c4PC7DSxeL/7tfsVMz
	bMfSpfHAYiS4Y10HmbbO0V2ujWDdw63XP0ZEUusMqShMivGjJ053eCyRoFEHg6GaMUDok2dMG4aoE
	8Om+0hYcDQ6b4Vmyx2ZMScZmUaz9gmwYk+UK/YuhOmKqI0L3EYUtK4HxcFkUA6UtLSfyeXgK3jUAe
	YXr/UBE4t3+MN0RmNGbihsc7CyF87gglD272jhd01GQor0HifZSuSzjMDKvwjGpRr3r6mD7BCThpQ
	JE1TQT487cwBWgpGqjjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAbJ-0006Zw-2D; Tue, 16 Jun 2020 12:22:01 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAaC-0005cN-Qf
 for linux-rockchip@lists.infradead.org; Tue, 16 Jun 2020 12:20:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 9BB9E2A0E9A
Subject: Re: [RESEND PATCH v3 6/6] media: staging: rkisp1: common: add
 documentation for struct rkisp1_isp_mbus_info
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
References: <20200613091353.12689-1-dafna.hirschfeld@collabora.com>
 <20200613091353.12689-7-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <739b92c2-1b4e-eeb9-5233-dc4add4316c6@collabora.com>
Date: Tue, 16 Jun 2020 09:20:43 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200613091353.12689-7-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_052053_022091_6465CD91 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

Thanks for the patch.

On 6/13/20 6:13 AM, Dafna Hirschfeld wrote:
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
> 

Why doesn't it remove the current doc?

Thanks
Helen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
