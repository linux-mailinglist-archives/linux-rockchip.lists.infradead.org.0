Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5789F89B49
	for <lists+linux-rockchip@lfdr.de>; Mon, 12 Aug 2019 12:20:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AuUE8DPh3jWAhFQ9HW+294Ct3aMbqw6VLcmc52uY3aU=; b=Rb4xoNjCVd81YU
	Nv0vKiMUnoM0LozGgmYpz+zecUgUrh81FeKh1beDAHEHDcfayUbXgdYlgB8POwisAkY+cfL6IE9wH
	Pkda7wBQKLQRBZ8Az+2UrxQWz0jaP7d5LYd0pwCA4VAtqZ09s/sH77vKHuuTbCdqmw3Wolqk9UCoz
	MxLl7YRHcwZYWmGx9D31E+5Ykkg3hRnI39C7yLKOg1OuxVWZ39FVGzdhZZCqePp57NJ3fbO0E+Ac/
	t/cOGhivxmewfwSq5HdzJIC2f2WgIgbo3fkr4/nsshUGBIJDU6prX9wuyLVO5ss6+r+q7l2bnRtvI
	62/CvhTfcip1wM57P8ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7Rg-0004Ou-3a; Mon, 12 Aug 2019 10:20:56 +0000
Received: from lb2-smtp-cloud7.xs4all.net ([194.109.24.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7RR-0004BM-HL
 for linux-rockchip@lists.infradead.org; Mon, 12 Aug 2019 10:20:43 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id x7RMhPsWJur8Tx7RPhhsWh; Mon, 12 Aug 2019 12:20:39 +0200
Subject: Re: [PATCH v4 05/11] media: uapi: h264: Get rid of the p0/b0/b1
 ref-lists
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
References: <20190808103432.12062-1-ezequiel@collabora.com>
 <20190808103432.12062-6-ezequiel@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <62750a74-f856-c927-72a3-17d1a2624550@xs4all.nl>
Date: Mon, 12 Aug 2019 12:20:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190808103432.12062-6-ezequiel@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfJY4BazdN7WJ3DSblSp0zDmu9k6KFGREpid5O1fJ8eM+zm2zyzj3Zy64A2UAvGmlEvRnLQl931G3sXe9J+/CPHfnVdAG6SK1ywrFNhilrRbAsN/0bD0C
 XeMR0xn+zcMtvyYsKkKI3vhVjDZaSgv0D288ArlXpGIsCZj8kx0MgRwkk/nBDQnFIvmSfFvzU117I3dGNkASYypZFzSTKIlPBXb5VxushrXUHIwZ72LBg917
 DhlQ9JwGPXLR8vtCP4ef8+Lpz+AIvyZg/4hzuWxEQTRTJRiOi+hivwhp5QqIra0+rfmiLVu3i2t6q8/AYmDT0jt/GxDGs09v+XmtZZOud1V2SN2qM6t9jUle
 qCBKZ7kNsqla98Q/jiIDchdoHdi8jJVkEVhPb0C1IQ6nsVbk9fUIgjhuzp80YRZ9Sb/lz6t5mLIxT2mvbxX3CPk3va5sxWVKtM0IYEDyCdXsq+34hLuX0S8G
 WA6IJyU0TapZiKdDSSuxsLWnkb0tfjk58p+aa4eOkbE4s0o6IW9gMX5/QhdNVtXzou0oLMjsn+3Km+BS97pQ9l72NEwoQruB8epg46aVJF7aE/CeuD/ULbm/
 lKKxDusTaVFUm/aI2oDlg6PdslCywPIC/36R19GscM9qcH7isXYSzUzXjFDu4Ir7XJI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_032041_726964_944387D3 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 8/8/19 12:34 PM, Ezequiel Garcia wrote:
> From: Boris Brezillon <boris.brezillon@collabora.com>
> 
> Those lists can be extracted from the dpb, let's simplify userspace
> life and build that list kernel-side (generic helpers will be provided
> for drivers that need this list).
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
> Changes in v4:
> * Add R-b

???

Nothing was added, left-over from some old version?

Regards,

	Hans

> * Remove the reflist from the struct
> 
> Changes in v3:
> * None
> 
> Changes in v2:
> * None
> ---
>  Documentation/media/uapi/v4l/ext-ctrls-codec.rst | 9 ---------
>  include/media/h264-ctrls.h                       | 3 ---
>  2 files changed, 12 deletions(-)
> 
> diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> index 94fd3a9b8b9e..d60909b2d1ca 100644
> --- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> @@ -1942,15 +1942,6 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
>      * - __u16
>        - ``nal_ref_idc``
>        - NAL reference ID value coming from the NAL Unit header
> -    * - __u8
> -      - ``ref_pic_list_p0[32]``
> -      - Backward reference list used by P-frames in the original bitstream order
> -    * - __u8
> -      - ``ref_pic_list_b0[32]``
> -      - Backward reference list used by B-frames in the original bitstream order
> -    * - __u8
> -      - ``ref_pic_list_b1[32]``
> -      - Forward reference list used by B-frames in the original bitstream order
>      * - __s32
>        - ``top_field_order_cnt``
>        - Picture Order Count for the coded top field
> diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
> index 31555c99f64a..2de438393025 100644
> --- a/include/media/h264-ctrls.h
> +++ b/include/media/h264-ctrls.h
> @@ -203,9 +203,6 @@ struct v4l2_ctrl_h264_decode_params {
>  	struct v4l2_h264_dpb_entry dpb[16];
>  	__u16 num_slices;
>  	__u16 nal_ref_idc;
> -	__u8 ref_pic_list_p0[32];
> -	__u8 ref_pic_list_b0[32];
> -	__u8 ref_pic_list_b1[32];
>  	__s32 top_field_order_cnt;
>  	__s32 bottom_field_order_cnt;
>  	__u32 flags; /* V4L2_H264_DECODE_PARAM_FLAG_* */
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
