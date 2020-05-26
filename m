Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB79A1E3388
	for <lists+linux-rockchip@lfdr.de>; Wed, 27 May 2020 01:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwAL4B85jYfx2SxcdKyNbPOiS3OGAdUq4JMjlnHxaVg=; b=BvWfmm3mMXJKRG
	BSTal6jUO+cCsi4N6EpfsNlNKKaWFSXfxZLpc2It5es+XiDpheURz2vTzNak/7cO10zWdeOerHYBK
	zICcaaLfLaA7vHb/61MDJmN0Yo0cRbr87wn/OcDHI7GhBEtw/gv6OZ5RAd4HvzRxCUvrsXHPHlANT
	Aj2XgSQmKSz+4AZgBPSjmAmPh5EsS2awaydZYL9shXaD1gILgevbhPzgQ9OD3dE1crCzqVqYWMsD0
	kDxm036ATPAv3f2cEQTRFFpdnOL7VeGue1cfx5A11P3oXFqdnKr6Y6LD2w5RHjHzrrLtVc7PNWgYj
	pndb6sA4HTq+lUvYs0DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdinG-0005F2-HE; Tue, 26 May 2020 23:15:34 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdinD-0005Eb-1P
 for linux-rockchip@lists.infradead.org; Tue, 26 May 2020 23:15:32 +0000
Received: by mail-il1-x141.google.com with SMTP id w18so22168215ilm.13
 for <linux-rockchip@lists.infradead.org>; Tue, 26 May 2020 16:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jySBpRhgkSp7FY1LCM2GdR3ZkT18v8dbWVMPb8KTVKQ=;
 b=jQvVZCuoZLkH0/MONjJCWdYd6HCaaSU40xZChA03I2EIwFahcBDNE9lgIU/8/hSscv
 Kkkh0A6F6G5Y/1Jr4D4RJBoDTmfu1oB6XPpCoWU46hm2rlP+4xK33JV3kJpC1SdV3cZa
 +6rMZa8qE1+kCQ8e0X1LGvkHJG6XjbZkBeYbk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jySBpRhgkSp7FY1LCM2GdR3ZkT18v8dbWVMPb8KTVKQ=;
 b=tnnR7nNPmqLCSwTy/pQMiXCtl3xo5f9uqr1zY/DcanUqPJRoMGpjBOmtb4XlzLc67Y
 iosA1Wxxd64JBwfZTi2pXoib7IjIJj6t+lCXD5THY8uf1ZzpsI9oG85knXJX+0X47Goa
 xlI7NP9GnW9AOHZTETGjNJkq5tCnby6o8DSI5VeMtthRCD7BkiZw0eo+1sZ8zrwfp5Up
 miQMrBjaLtdv93YaOA0k4Mh4wlkLxTXTh14uKfm12uLCqXxUPpp9PsoKluZMBlff5XQW
 JQbfgXuzT3kNUbm/vYLoanWqdm/TXWJBgZvJ2kd39XhSLamQyJfV1vAZPJ9XtFo/Sp+8
 8HLw==
X-Gm-Message-State: AOAM531vJNwv7df9GIvn8YKlu4p7HkRhKDj/0uZ+sqvB1DTSQbu4aOPd
 sOfE57LX07zo41KH7LuJtPvzNce0yMwOI+/HMCTfug==
X-Google-Smtp-Source: ABdhPJzUFjqV1LEvDL6VMICWxhJEfLEXJnd1oqfCQQJcRjKaYsMndr5uwWNZ1KljJGIXDsvI2EbJiKzpjaYyIcB48p4=
X-Received: by 2002:a92:d182:: with SMTP id z2mr3490952ilz.47.1590534929915;
 Tue, 26 May 2020 16:15:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200509152904.26348-1-dafna.hirschfeld@collabora.com>
 <20200509152904.26348-2-dafna.hirschfeld@collabora.com>
In-Reply-To: <20200509152904.26348-2-dafna.hirschfeld@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 27 May 2020 01:15:18 +0200
Message-ID: <CAHD77Hksw9QmSkNs7qx7fBHWDw7gJjhZAXNZCrMLhEYFFg5e_g@mail.gmail.com>
Subject: Re: [PATCH 2/2] media: staging: rkisp1: stats: don't set stats flags
 in rkisp1_stats_send_measurement
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_161531_096486_E61BED03 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, May 9, 2020 at 5:29 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> The flags that indicate which statistics are read are already
> set in the functions that read them so there is no need to
> set them in the function rkisp1_stats_send_measurement.
>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-stats.c | 13 +++----------
>  1 file changed, 3 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
> index 8351bda0be03..0616793ae395 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-stats.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
> @@ -356,26 +356,19 @@ rkisp1_stats_send_measurement(struct rkisp1_stats *stats,
>         cur_stat_buf =
>                 (struct rkisp1_stat_buffer *)(cur_buf->vaddr[0]);
>

Should we perhaps also set cur_stat_buf->meas_type to 0 here?

> -       if (meas_work->isp_ris & RKISP1_CIF_ISP_AWB_DONE) {
> +       if (meas_work->isp_ris & RKISP1_CIF_ISP_AWB_DONE)
>                 rkisp1_stats_get_awb_meas(stats, cur_stat_buf);
> -               cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AWB;

I wonder if it wouldn't be cleaner if this function took care of
meas_type, rather than sprinkling it all over the measurement
collection functions.

> -       }
>
> -       if (meas_work->isp_ris & RKISP1_CIF_ISP_AFM_FIN) {
> +       if (meas_work->isp_ris & RKISP1_CIF_ISP_AFM_FIN)
>                 rkisp1_stats_get_afc_meas(stats, cur_stat_buf);
> -               cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AFM_FIN;
> -       }
>
>         if (meas_work->isp_ris & RKISP1_CIF_ISP_EXP_END) {
>                 rkisp1_stats_get_aec_meas(stats, cur_stat_buf);
>                 rkisp1_stats_get_bls_meas(stats, cur_stat_buf);
> -               cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AUTOEXP;
>         }
>
> -       if (meas_work->isp_ris & RKISP1_CIF_ISP_HIST_MEASURE_RDY) {
> +       if (meas_work->isp_ris & RKISP1_CIF_ISP_HIST_MEASURE_RDY)
>                 rkisp1_stats_get_hst_meas(stats, cur_stat_buf);
> -               cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
> -       }
>
>         vb2_set_plane_payload(&cur_buf->vb.vb2_buf, 0,
>                               sizeof(struct rkisp1_stat_buffer));
> --
> 2.17.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
