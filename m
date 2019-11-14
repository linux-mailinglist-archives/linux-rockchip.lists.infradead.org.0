Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF71FC1CC
	for <lists+linux-rockchip@lfdr.de>; Thu, 14 Nov 2019 09:47:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIXlJJG5nOa80bfSoyVK4Y9QYKApOsPbk+CyjSuIvwI=; b=l6qBySCScLUkk6
	enJw6iHpKua1HqOeVt4XKVkRrII1w+bhFcnNCL6fSI2fvgeaqRyPlPuxGCX1+jvVSUknpxcHbGl2U
	V7KfHPXRf2Eqt0X48t9dOOWZaNL/RDbmsWoi0ODX5XnM77TtWIDLDZ9mG4VHH/9OwUm0GsdDHKVoF
	gpxqX3zfKC7xLxuCIpopUqE54yDCfPYdfnnzdfcv95Cor7uTi0FIIZDM1slYwhxDeeUpcEX3KJeOH
	/q6sshrN7hKWHUgCmoQPi6EXYxv/Jr99R4TbioykMvm8mQ6QINa9WJlTAnc9iQWq30lhDeb0kTpgx
	Zja8G1qgeob1wND87tQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVAme-0004Zp-LH; Thu, 14 Nov 2019 08:47:20 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVAmb-0004Z7-Ka
 for linux-rockchip@lists.infradead.org; Thu, 14 Nov 2019 08:47:19 +0000
Received: by mail-ed1-x544.google.com with SMTP id a21so4304348edj.8
 for <linux-rockchip@lists.infradead.org>; Thu, 14 Nov 2019 00:47:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uFeS+uA4c3JpCfgrQSP5W4UkQmv75ra/a0iuWSrGw8w=;
 b=F6GUlB6iw2SB4SJnps1K+f1038Vraj5TlbOPJ3viIHEBnViOrPo1rXMIYnA/hYWUXq
 UuV5QaciRJDPLRS9hzYNmdJewiXmJB0pTCHoGsxIZWSbfcznBC9Wp4Aaq1RBIa94v6Oj
 iGhktZEqYhWMO1kdpDeTFv33ORLDA+36hWg1c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uFeS+uA4c3JpCfgrQSP5W4UkQmv75ra/a0iuWSrGw8w=;
 b=XWp2FqaJSo3pBbLXNm1IGdfiIjgo5tGZ7eVkNHG9P0wNRqhf0vnrbvEvbfwvQYoGaS
 H34vkBnd5DFpPXzz92ITSqa3red8+sPvcDSPFpQvkXNtHqpuDxen89qYtN9yxcqOuXNn
 tiHvH+t2QpQmBgT3rFSBuK2a23Nd7NKt2E8eVC72SIQTRuWj/pmfJ1VRD5PuSyibBFPw
 cp74zIyOlst7w3xob1cwsIS6vMKb6hT3lzEHl/hc8KLIkBa579VzFSB2pLmdElV4Wi4t
 teHB9oDVTq6Nyd555g6xXhbPYGS5wLfej3AJLfrwIVsmaLnwntmDNW0QytIObvVzdcsI
 6U3A==
X-Gm-Message-State: APjAAAXEX9M4aiFAb6IaCNylFn+InjmU3GLXDzapcDL0rtAiIG3J4Jgr
 rlfShAJo2L7jhlWzCH7io7mNUT2YkpvkjQ==
X-Google-Smtp-Source: APXvYqxqJsqizbtKriZ4ThlNsK83xI3vTPfa1BfXmU7KYryj5ySJ3AFm0qH7Wn/703Vh2BBAc1kOBw==
X-Received: by 2002:aa7:c719:: with SMTP id i25mr8517535edq.224.1573721234136; 
 Thu, 14 Nov 2019 00:47:14 -0800 (PST)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com.
 [209.85.128.54])
 by smtp.gmail.com with ESMTPSA id j23sm30225ede.52.2019.11.14.00.47.12
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Nov 2019 00:47:13 -0800 (PST)
Received: by mail-wm1-f54.google.com with SMTP id b11so4737397wmb.5
 for <linux-rockchip@lists.infradead.org>; Thu, 14 Nov 2019 00:47:12 -0800 (PST)
X-Received: by 2002:a7b:cbd9:: with SMTP id n25mr7174991wmi.64.1573721232315; 
 Thu, 14 Nov 2019 00:47:12 -0800 (PST)
MIME-Version: 1.0
References: <20191114051242.14651-1-helen.koike@collabora.com>
 <20191114051242.14651-3-helen.koike@collabora.com>
 <09d4f683-d03d-46c9-e9d2-b8cceb72446e@xs4all.nl>
In-Reply-To: <09d4f683-d03d-46c9-e9d2-b8cceb72446e@xs4all.nl>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 14 Nov 2019 17:47:00 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CLhUtTAWr_zF5ZPH7kPMQxjwzUMDYWowbbbc9bLowmRQ@mail.gmail.com>
Message-ID: <CAAFQd5CLhUtTAWr_zF5ZPH7kPMQxjwzUMDYWowbbbc9bLowmRQ@mail.gmail.com>
Subject: Re: [PATCH v11 02/11] media: staging: rkisp1: add document for rkisp1
 meta buffer format
To: Hans Verkuil <hverkuil@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_004717_701950_F1813980 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Eddie Cai <eddie.cai.linux@gmail.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 =?UTF-8?B?6ZKf5Lul5bSH?= <zyc@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jacob Chen <jacob-chen@iotwrt.com>, Hans Verkuil <hans.verkuil@cisco.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Jeffy <jeffy.chen@rock-chips.com>, Helen Koike <helen.koike@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Jacob Chen <jacob-chen@rock-chips.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Jacob Chen <jacob2.chen@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 5:21 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 11/14/19 6:12 AM, Helen Koike wrote:
> > From: Jacob Chen <jacob2.chen@rock-chips.com>
> >
> > This commit add document for rkisp1 meta buffer format
> >
> > Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com>
> > [refactored for upstream]
> > Signed-off-by: Helen Koike <helen.koike@collabora.com>
>
> checkpatch gives me:
>
> WARNING: Missing Signed-off-by: line by nominal patch author 'Jacob Chen <jacob2.chen@rock-chips.com>'
>
> Looking at this series I see duplicate Signed-off-by entries for Jacob Chen and a total
> of three different email addresses:
>
> jacob2.chen@rock-chips.com
> jacob-chen@rock-chips.com
> cc@rock-chips.com

I remember there used to be two different people named Jacob Chen in
the project. Also FWIW at least one of them
(jacob2.chen@rock-chips.com) is not at Rockchip anymore.

Looking in my inbox, I don't see anyone matching
jacob-chen@rock-chips.com, so that could possibly be a mistyped
jacob2.chen@rock-chips.com?

Best regards,
Tomasz



>
> It's confusing.
>
> Regards,
>
>         Hans
>
> >
> > ---
> >
> > Changes in v11: None
> > Changes in v10:
> > - unsquash
> >
> > Changes in v9:
> > - squash
> > - migrate to staging
> > - remove meta-formats.rst update
> >
> > Changes in v8:
> > - Add SPDX in the header
> > - Remove emacs configs
> > - Fix doc style
> >
> > Changes in v7:
> > - s/correspond/corresponding
> > - s/use/uses
> > - s/docuemnt/document
> >
> >  .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    | 23 +++++++++++++++++++
> >  .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      | 22 ++++++++++++++++++
> >  2 files changed, 45 insertions(+)
> >  create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> >  create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> >
> > diff --git a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> > new file mode 100644
> > index 000000000000..103b5cb79b7c
> > --- /dev/null
> > +++ b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
> > @@ -0,0 +1,23 @@
> > +.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +.. _v4l2-meta-fmt-rkisp1-params:
> > +
> > +============================
> > +V4L2_META_FMT_RK_ISP1_PARAMS
> > +============================
> > +
> > +Rockchip ISP1 Parameters Data
> > +
> > +Description
> > +===========
> > +
> > +This format describes input parameters for the Rockchip ISP1.
> > +
> > +It uses c-struct :c:type:`rkisp1_isp_params_cfg`, which is defined in
> > +the ``linux/rkisp1-config.h`` header file.
> > +
> > +The parameters consist of multiple modules.
> > +The module won't be updated if the corresponding bit was not set in module_*_update.
> > +
> > +.. kernel-doc:: include/uapi/linux/rkisp1-config.h
> > +   :functions: rkisp1_isp_params_cfg
> > diff --git a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> > new file mode 100644
> > index 000000000000..4ad303f96421
> > --- /dev/null
> > +++ b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
> > @@ -0,0 +1,22 @@
> > +.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +.. _v4l2-meta-fmt-rkisp1-stat:
> > +
> > +=============================
> > +V4L2_META_FMT_RK_ISP1_STAT_3A
> > +=============================
> > +
> > +
> > +Rockchip ISP1 Statistics Data
> > +
> > +Description
> > +===========
> > +
> > +This format describes image color statistics information generated by the Rockchip
> > +ISP1.
> > +
> > +It uses c-struct :c:type:`rkisp1_stat_buffer`, which is defined in
> > +the ``linux/rkisp1-config.h`` header file.
> > +
> > +.. kernel-doc:: include/uapi/linux/rkisp1-config.h
> > +   :functions: rkisp1_stat_buffer
> >
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
