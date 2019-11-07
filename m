Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18414F25D5
	for <lists+linux-rockchip@lfdr.de>; Thu,  7 Nov 2019 04:08:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vtyHCuSKW8ttDN8CK75ysctU5uoUgBa/OHueAMdN34=; b=RTYGtdqcpI+x5G
	ps9tPXY3XMYRGxl3IJ+3QfPr15TdStJ1CS5p86dd+mN+pjsmvYc6ma3IIGv2Bbyt5cX2TxL1La6K3
	AvXT0MoQClp0UpOwKwY3orrhcubdMKx0POo7eEVXEucm5Ti8B35m/4dQfiE+b+EauTdXv1NGtafm1
	hnwLbTkH5fnnDkqaKX+Ukf93AqDVA1rLgggn8WPb5QL+fMPJ7rTFn8fu79JbpMb3EoBbvY6pO+1BS
	HM+NrSgPM17LkuNbXgwNQsY1mUIomUs2lyj4qr5ncrlzfeqbsgmf+hP4lsYhK7PRHSvtscTEgRTml
	Zc20i3pLH+4y3TMKNerg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSYAE-0000dU-19; Thu, 07 Nov 2019 03:08:50 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSYA9-0000ck-WF
 for linux-rockchip@lists.infradead.org; Thu, 07 Nov 2019 03:08:47 +0000
Received: by mail-ed1-x542.google.com with SMTP id f7so646920edq.3
 for <linux-rockchip@lists.infradead.org>; Wed, 06 Nov 2019 19:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AAfjo+6GX40N8x/qOoAPJLTNhLDPy6SYwK6lSBU1urk=;
 b=YMfJpiCN4Ig8D+LLOBNrepFfMz7Ze5j63f+c9Uw8V5q9niZmdpwGA+CXuQuw5PrWS3
 7dTE+HC+yEBDy3rtNxNpUJeDPn2L8svDkdkUHIxc9CIRoxICSYDdy1kzKdOnOPS2U2cX
 ak6fy7fMi6PIbdJJLXbqqFBQHk80kW0gbEpmk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AAfjo+6GX40N8x/qOoAPJLTNhLDPy6SYwK6lSBU1urk=;
 b=VISkmRDKuktzsQJvIBYAKlGS7duINtG5HDmtocMFd70LrZjVF++KFtSCHGldyFyRnk
 Y5KXYJTy5UO1winWKui6TpZPP40rFw1TB7cZnMQxm7/UyXfl8QE4q0QL6KABPySrxeY4
 GwW87T8FHGwrxtEZegr+b+TpYKZ/SbEeok1XkaCr4IAiJfbVrHpZ1LigYQFJY42i08Zx
 AsK+3HQLTjWVOjAP6OqCV900LMjMMrzVwkCyVTihQVYAcLoNloXeXVb7YW0S+j6TePpc
 Vydv4WsjEZM++pwE7xcTOORjUJDn6yHdq8n6f432hPFiRjxGyPBlIbWtVqbMbaF94WAl
 sqFg==
X-Gm-Message-State: APjAAAU9JPyDhGI6FtetcQHKg7T1ar+eGN0W1xEIDoDsjmeN3lUCuzRm
 0Jata/a3iwyZanU96vRcVZfDJYwVjb2pRw==
X-Google-Smtp-Source: APXvYqwGOE1cIcuBeFzIPff880sIK/sqDboY56ZyblJgFW9v+Kde45u6lG3n8SSng/6r2S4aJrXsWg==
X-Received: by 2002:aa7:c44a:: with SMTP id n10mr1166338edr.282.1573096123928; 
 Wed, 06 Nov 2019 19:08:43 -0800 (PST)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com.
 [209.85.221.50])
 by smtp.gmail.com with ESMTPSA id b22sm16723edj.25.2019.11.06.19.08.40
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Nov 2019 19:08:41 -0800 (PST)
Received: by mail-wr1-f50.google.com with SMTP id t1so1282201wrv.4
 for <linux-rockchip@lists.infradead.org>; Wed, 06 Nov 2019 19:08:40 -0800 (PST)
X-Received: by 2002:a5d:4946:: with SMTP id r6mr52152wrs.155.1573096120434;
 Wed, 06 Nov 2019 19:08:40 -0800 (PST)
MIME-Version: 1.0
References: <20191106120132.6876-1-helen.koike@collabora.com>
 <20191106120132.6876-2-helen.koike@collabora.com>
 <9102bcf8-0279-7972-daff-b15aaf98804d@cisco.com>
 <28cff7ab-ef56-791e-0342-571f64cb9807@collabora.com>
 <b1a8fa60a3c8922c364a18b0583dab55660f2fb4.camel@collabora.com>
 <c3b03fc7-100d-4c16-f561-b26969d13fea@collabora.com>
In-Reply-To: <c3b03fc7-100d-4c16-f561-b26969d13fea@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 7 Nov 2019 12:08:27 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AtZ+MiAWVDVkE3PLj-TuwjZd=zg9ozE6P_6bNW_o0oBg@mail.gmail.com>
Message-ID: <CAAFQd5AtZ+MiAWVDVkE3PLj-TuwjZd=zg9ozE6P_6bNW_o0oBg@mail.gmail.com>
Subject: Re: [PATCH v9 1/4] media: videodev2.h, v4l2-ioctl: add rkisp1 meta
 buffer format
To: Helen Koike <helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_190846_063741_A0DDC997 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "eddie.cai.linux@gmail.com" <eddie.cai.linux@gmail.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jeffy.chen@rock-chips.com" <jeffy.chen@rock-chips.com>,
 "zyc@rock-chips.com" <zyc@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jacob Chen <jacob2.chen@rock-chips.com>,
 "Hans Verkuil \(hansverk\)" <hansverk@cisco.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>,
 "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>,
 "zhengsq@rock-chips.com" <zhengsq@rock-chips.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Nov 7, 2019 at 8:26 AM Helen Koike <helen.koike@collabora.com> wrote:
>
>
>
> On 11/6/19 11:44 AM, Ezequiel Garcia wrote:
> > Hi Hans, Helen:
> >
> > On Wed, 2019-11-06 at 09:30 -0300, Helen Koike wrote:
> >>
> >> On 11/6/19 10:22 AM, Hans Verkuil (hansverk) wrote:
> >>> On 11/6/19 1:01 PM, Helen Koike wrote:
> >>>> From: Shunqian Zheng <zhengsq@rock-chips.com>
> >>>>
> >>>> Add the Rockchip ISP1 specific processing parameter format
> >>>> V4L2_META_FMT_RK_ISP1_PARAMS and metadata format
> >>>> V4L2_META_FMT_RK_ISP1_STAT_3A for 3A.
> >>>>
> >>>> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> >>>> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> >>>> Acked-by: Hans Verkuil <hans.verkuil@cisco.com>
> >>>
> >>> I acked this? It is missing documentation for these new formats.
> >>
> >> I think so https://www.spinics.net/lists/linux-rockchip/msg18999.html :)
> >>
> >> I'll update the docs and the fixes you pointed below.
> >>
> >> Thanks.
> >> Helen
> >>
> >>>> [refactored for upstream]
> >>>> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> >>>> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >>>>
> >>>> ---
> >>>>
> >>>> Changes in v9:
> >>>> - Add reviewed-by tag from Laurent
> >>>>
> >>>> Changes in v8: None
> >>>> Changes in v7:
> >>>> - s/IPU3/RK_ISP1
> >>>>
> >>>>  drivers/media/v4l2-core/v4l2-ioctl.c | 2 ++
> >>>>  include/uapi/linux/videodev2.h       | 4 ++++
> >>>>  2 files changed, 6 insertions(+)
> >>>>
> >>>> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
> >>>> index 315ac12c3e0a..ade990554caf 100644
> >>>> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
> >>>> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
> >>>> @@ -1341,6 +1341,8 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
> >>>>    case V4L2_META_FMT_UVC:         descr = "UVC Payload Header Metadata"; break;
> >>>>    case V4L2_META_FMT_D4XX:        descr = "Intel D4xx UVC Metadata"; break;
> >>>>    case V4L2_META_FMT_VIVID:       descr = "Vivid Metadata"; break;
> >>>> +  case V4L2_META_FMT_RK_ISP1_PARAMS:      descr = "Rockchip ISP1 3A params"; break;
> >>>
> >>> params -> Params
> >>>
> >>>> +  case V4L2_META_FMT_RK_ISP1_STAT_3A:     descr = "Rockchip ISP1 3A statistics"; break;
> >>>
> >>> statistics -> Statistics
> >>>
> >>>>
> >>>>    default:
> >>>>            /* Compressed formats */
> >>>> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> >>>> index f98bbcced8ff..56798b09cd85 100644
> >>>> --- a/include/uapi/linux/videodev2.h
> >>>> +++ b/include/uapi/linux/videodev2.h
> >
> > Can we avoid touching videodev2.h, as we did for the stateless codec pixfmts?
>
> I think it should be part of the uapi, as it is the metadata format used in the video output device.
> I propose to leave it inside drivers/staging/media/rkisp1/uapi/rkisp1-config.h while the driver is in staging,
> then we expose it later with a better documentation too. Make sense?

Makes sense, as it's also what we've done for ipu3, +/- a slightly
different path:
https://elixir.bootlin.com/linux/latest/source/drivers/staging/media/ipu3/include/intel-ipu3.h#L12

We could possibly move the header to include/rockchip-isp1.h to be consistent.

Best regards,
Tomasz

>
> Thanks,
> Helen
>
> >
> > Thanks,
> > Ezequiel
> >
> >>>> @@ -762,6 +762,10 @@ struct v4l2_pix_format {
> >>>>  #define V4L2_META_FMT_D4XX        v4l2_fourcc('D', '4', 'X', 'X') /* D4XX Payload Header metadata */
> >>>>  #define V4L2_META_FMT_VIVID         v4l2_fourcc('V', 'I', 'V', 'D') /* Vivid Metadata */
> >>>>
> >>>> +/* Vendor specific - used for RK_ISP1 camera sub-system */
> >>>> +#define V4L2_META_FMT_RK_ISP1_PARAMS      v4l2_fourcc('R', 'K', '1', 'P') /* Rockchip ISP1 params */
> >>>> +#define V4L2_META_FMT_RK_ISP1_STAT_3A     v4l2_fourcc('R', 'K', '1', 'S') /* Rockchip ISP1 3A statistics */
> >>>> +
> >>>>  /* priv field value to indicates that subsequent fields are valid. */
> >>>>  #define V4L2_PIX_FMT_PRIV_MAGIC           0xfeedcafe
> >>>>
> >>>>
> >>>
> >>> Regards,
> >>>
> >>>     Hans
> >>>
> >
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
