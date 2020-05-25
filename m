Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD6B1E0DAF
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 May 2020 13:47:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06lc08nWiaIwnDFOt3znR+rsxweEMUdtyqw3OshOC0M=; b=UdO8GdzOTGt3wg
	6lUXFLCt9vw2NSJy33+wkol7OQvyHn15xjr5JCweEOJLmfMDchvr8+XMbhw37JXoiZEhXCX7cMxAU
	kA/NBgCgsaog2xBM7SjzIXfLzC8U2mgvwCR9W7IaozoswTf8zlsvuj5Nu2gPKeI+Ac7xnajHVDTJl
	Y1WKpGZru/uaARnERtI/jiQCPUF44tLtTH4oVApdKj048YKzACXFz6iDcIATwICGpu87PJYtPHuFD
	yQoih4YAY1q+jOe0zCTUg1Gzv7tGtDKZsYo4cSp2+kByuvciN3QmBiARgmHI89c8vwZDdUuB35nQu
	AciIpVIY2Egs43gnZlzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBaB-0006J1-DN; Mon, 25 May 2020 11:47:51 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBa8-0006II-Rs
 for linux-rockchip@lists.infradead.org; Mon, 25 May 2020 11:47:50 +0000
Received: by mail-ed1-x542.google.com with SMTP id i16so14792149edv.1
 for <linux-rockchip@lists.infradead.org>; Mon, 25 May 2020 04:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hl7IW7DWz99YomR3QOZBXmvlxAGPmsXZQwu20AX5v3s=;
 b=buAXv4JEaQqiHrO8/RCz7HUcFTvhmEjLbUZHKrXlRHNck0Rq6D8WUDoq2L3hNja/6v
 t1syq8JezlywvTLr95huE9K/RR3oyutUWhO1IsPHTp6b/xHwqCEXwE4xS0rtsqbZ6SEL
 KwmqiMdE0QJSqHwNi1PaxzQDGEvLE0qUP4uaQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hl7IW7DWz99YomR3QOZBXmvlxAGPmsXZQwu20AX5v3s=;
 b=iKcHPlNFgu7vjJ2VwzmCrgDI8EcNxd1T1I1W2vTyDCPltbCNjE7qMwQH4WmUtwJ36Q
 3Rh5OrWqqM9q1XJzS4+wzaTt3U5CxCMGoHrkCFdRKKVhLMFm9LBbxWR4YhR/A93zHn3c
 w4esZHb3f6WsVIkB2hkoegWvofRsWMfAI+yjFiKKWl6FTaMeaztOEqW9Rja7XIPbJSfL
 WO3y5uuxzzuLWV7w3WvMtERFI3jftvh1lY4lN6FYXMux10zbIXgFpCsgsR3BYECtIBjb
 /hYNM4lxGgBkQ0puia31eb5Z8D3bZLdMYDW/hy0bh6OzP0a4VsP49O0dGxRcqnbCptCE
 YNcw==
X-Gm-Message-State: AOAM533WQkF1loY2M7/gdClaJp4jbMaKOjW3S8VcnorQ7xKcW7ESyoHp
 fTs4CoJElvW5ibKF3QYh9N310ODRCUIKyQ==
X-Google-Smtp-Source: ABdhPJzr8rwnsP0B7RJwUUXW2lyCVLjt1T4kdx/6dfmAOhDD0O0LjQnxKXWpYVwO8dDgBeMMjFVydQ==
X-Received: by 2002:aa7:d993:: with SMTP id u19mr14649115eds.358.1590407266870; 
 Mon, 25 May 2020 04:47:46 -0700 (PDT)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com.
 [209.85.221.41])
 by smtp.gmail.com with ESMTPSA id l1sm3089650ejd.114.2020.05.25.04.47.45
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 04:47:46 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id x14so11443877wrp.2
 for <linux-rockchip@lists.infradead.org>; Mon, 25 May 2020 04:47:45 -0700 (PDT)
X-Received: by 2002:adf:e543:: with SMTP id z3mr14323859wrm.385.1590407265383; 
 Mon, 25 May 2020 04:47:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200522202130.13306-1-jonas@kwiboo.se>
In-Reply-To: <20200522202130.13306-1-jonas@kwiboo.se>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 25 May 2020 13:47:33 +0200
X-Gmail-Original-Message-ID: <CAAFQd5C7SsLET_6yHNpXnG5ozb09znOpRV1Rx8-uDpy=d4+ETQ@mail.gmail.com>
Message-ID: <CAAFQd5C7SsLET_6yHNpXnG5ozb09znOpRV1Rx8-uDpy=d4+ETQ@mail.gmail.com>
Subject: Re: [PATCH] media: rkvdec: Fix H264 scaling list order
To: Jonas Karlman <jonas@kwiboo.se>, Alexandre Courbot <acourbot@chromium.org>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_044748_903244_6C462DA4 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 10:21 PM Jonas Karlman <jonas@kwiboo.se> wrote:
>
> The Rockchip Video Decoder driver is expecting that the values in a
> scaling list are in zig-zag order and applies the inverse scanning process
> to get the values in matrix order.
>
> Commit 0b0393d59eb4 ("media: uapi: h264: clarify expected
> scaling_list_4x4/8x8 order") clarified that the values in the scaling list
> should already be in matrix order.
>
> Fix this by removing the reordering and change to use two memcpy.
>
> Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 70 +++++++---------------
>  1 file changed, 22 insertions(+), 48 deletions(-)
>

+Alexandre Courbot +Jeffrey Kardatzke for visibility

> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
> index cd4980d06be7..2719f0c66a4a 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
> @@ -18,11 +18,16 @@
>  /* Size with u32 units. */
>  #define RKV_CABAC_INIT_BUFFER_SIZE     (3680 + 128)
>  #define RKV_RPS_SIZE                   ((128 + 128) / 4)
> -#define RKV_SCALING_LIST_SIZE          (6 * 16 + 6 * 64 + 128)
>  #define RKV_ERROR_INFO_SIZE            (256 * 144 * 4)
>
>  #define RKVDEC_NUM_REFLIST             3
>
> +struct rkvdec_scaling_matrix {
> +       u8 scaling_list_4x4[6][16];
> +       u8 scaling_list_8x8[6][64];
> +       u8 padding[128];
> +};
> +
>  struct rkvdec_sps_pps_packet {
>         u32 info[8];
>  };
> @@ -86,7 +91,7 @@ struct rkvdec_ps_field {
>  /* Data structure describing auxiliary buffer format. */
>  struct rkvdec_h264_priv_tbl {
>         s8 cabac_table[4][464][2];
> -       u8 scaling_list[RKV_SCALING_LIST_SIZE];
> +       struct rkvdec_scaling_matrix scaling_list;
>         u32 rps[RKV_RPS_SIZE];
>         struct rkvdec_sps_pps_packet param_set[256];
>         u8 err_info[RKV_ERROR_INFO_SIZE];
> @@ -785,56 +790,25 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
>         }
>  }
>
> -/*
> - * NOTE: The values in a scaling list are in zig-zag order, apply inverse
> - * scanning process to get the values in matrix order.
> - */
> -static const u32 zig_zag_4x4[16] = {
> -       0, 1, 4, 8, 5, 2, 3, 6, 9, 12, 13, 10, 7, 11, 14, 15
> -};
> -
> -static const u32 zig_zag_8x8[64] = {
> -       0,  1,  8, 16,  9,  2,  3, 10, 17, 24, 32, 25, 18, 11,  4,  5,
> -       12, 19, 26, 33, 40, 48, 41, 34, 27, 20, 13,  6,  7, 14, 21, 28,
> -       35, 42, 49, 56, 57, 50, 43, 36, 29, 22, 15, 23, 30, 37, 44, 51,
> -       58, 59, 52, 45, 38, 31, 39, 46, 53, 60, 61, 54, 47, 55, 62, 63
> -};
> -
> -static void reorder_scaling_list(struct rkvdec_ctx *ctx,
> -                                struct rkvdec_h264_run *run)
> +static void assemble_hw_scaling_list(struct rkvdec_ctx *ctx,
> +                                    struct rkvdec_h264_run *run)
>  {
>         const struct v4l2_ctrl_h264_scaling_matrix *scaling = run->scaling_matrix;
> -       const size_t num_list_4x4 = ARRAY_SIZE(scaling->scaling_list_4x4);
> -       const size_t list_len_4x4 = ARRAY_SIZE(scaling->scaling_list_4x4[0]);
> -       const size_t num_list_8x8 = ARRAY_SIZE(scaling->scaling_list_8x8);
> -       const size_t list_len_8x8 = ARRAY_SIZE(scaling->scaling_list_8x8[0]);
>         struct rkvdec_h264_ctx *h264_ctx = ctx->priv;
>         struct rkvdec_h264_priv_tbl *tbl = h264_ctx->priv_tbl.cpu;
> -       u8 *dst = tbl->scaling_list;
> -       const u8 *src;
> -       int i, j;
> -
> -       BUILD_BUG_ON(ARRAY_SIZE(zig_zag_4x4) != list_len_4x4);
> -       BUILD_BUG_ON(ARRAY_SIZE(zig_zag_8x8) != list_len_8x8);
> -       BUILD_BUG_ON(ARRAY_SIZE(tbl->scaling_list) <
> -                    num_list_4x4 * list_len_4x4 +
> -                    num_list_8x8 * list_len_8x8);
> -
> -       src = &scaling->scaling_list_4x4[0][0];
> -       for (i = 0; i < num_list_4x4; ++i) {
> -               for (j = 0; j < list_len_4x4; ++j)
> -                       dst[zig_zag_4x4[j]] = src[j];
> -               src += list_len_4x4;
> -               dst += list_len_4x4;
> -       }
>
> -       src = &scaling->scaling_list_8x8[0][0];
> -       for (i = 0; i < num_list_8x8; ++i) {
> -               for (j = 0; j < list_len_8x8; ++j)
> -                       dst[zig_zag_8x8[j]] = src[j];
> -               src += list_len_8x8;
> -               dst += list_len_8x8;
> -       }
> +       BUILD_BUG_ON(sizeof(tbl->scaling_list.scaling_list_4x4) !=
> +                    sizeof(scaling->scaling_list_4x4));
> +       BUILD_BUG_ON(sizeof(tbl->scaling_list.scaling_list_8x8) !=
> +                    sizeof(scaling->scaling_list_8x8));
> +
> +       memcpy(tbl->scaling_list.scaling_list_4x4,
> +              scaling->scaling_list_4x4,
> +              sizeof(scaling->scaling_list_4x4));
> +
> +       memcpy(tbl->scaling_list.scaling_list_8x8,
> +              scaling->scaling_list_8x8,
> +              sizeof(scaling->scaling_list_8x8));
>  }
>
>  /*
> @@ -1126,7 +1100,7 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
>         v4l2_h264_build_b_ref_lists(&reflist_builder, h264_ctx->reflists.b0,
>                                     h264_ctx->reflists.b1);
>
> -       reorder_scaling_list(ctx, &run);
> +       assemble_hw_scaling_list(ctx, &run);
>         assemble_hw_pps(ctx, &run);
>         assemble_hw_rps(ctx, &run);
>         config_registers(ctx, &run);
> --
> 2.17.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
