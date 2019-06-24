Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5D351BE6
	for <lists+linux-rockchip@lfdr.de>; Mon, 24 Jun 2019 22:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntBUhTHPyoj11stZpBNZGEJ0HEQ68RQ04KeZy79iJN4=; b=kaoViuT7Tsf3S/
	sEDiiKZYFrNSw3v9ZqBUQS0J86w/gERl7u9UY10cDW3k3cDyZq3g2lMp3/ThWI/6byIjwIxd/Xg1d
	H2urfIjrrils1tlDGVwVPbqq6DTcFPrkjuAaIkTUQqla/rCqUlGnzCjZ75rJGMCfnnpUm2NiADGqU
	EJEN+OvWrQYdkk6EbxTQiJXBwj1aTeXLSKaFJJPl8n60k69GFHGGnNUyZki/vXGFR/HEGwG1PoCQr
	MxzgaxyqGdOCGO9naqhYfZnW6F9M/l66MM9mrOUwsSs3sWhQetwChA2qwVzHKzK09Ou9+/R4XO2ko
	yujCuXInB6WShOY2D71Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVBa-0003DB-6c; Mon, 24 Jun 2019 20:03:30 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVBX-0003CW-3R
 for linux-rockchip@lists.infradead.org; Mon, 24 Jun 2019 20:03:28 +0000
Received: by mail-io1-xd43.google.com with SMTP id w25so4361094ioc.8
 for <linux-rockchip@lists.infradead.org>; Mon, 24 Jun 2019 13:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5G5TGMZ6AYi5gRQNnYnWdNq47kMogCEidAxRTjgan2s=;
 b=XWtBPn9ibpqotN/2oTx9ERROro6K607uDjcBZubtfZ7AWCAdk2ckqc80ebr81hYsSI
 ManUcxBZ7CpcbYP/eRkdTt7HCnpsIIeyh7Uo6Vn3wjXexTEfwL+8zXXVp43P6HvcPOaq
 hP0kyexxzW11HpYpHOyzzIY/K7o6DbmZCV9D4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5G5TGMZ6AYi5gRQNnYnWdNq47kMogCEidAxRTjgan2s=;
 b=HNgjz60l5w21dDyqhKiCIlqezKviKIL03rvEsxePMPycFHmjO+GGF5+XAs+jk1+rC3
 0A6GEU2qwyCcAjGc75jys4SgOLkpAREIyHbpWM4rf1YKmDYObWgk3/W0+/dnwV9/XJoR
 JUO8K0LvU+IVJ89BXbpVsxt2NOqG4CpQEtoVGVCa2EGxaAjJDDA/S1wEIMi+puIfF9KO
 R0cNRsEpyo5OktQ9YSw7hRUd2RYLZKZRVqD4sWCh/syJSLTTtvQtzMDJ6z1Z5q8X6JAD
 9AmjptlPdTSyyMc1Hd7iTHs7ojNR5J9xvuFK+rw6yKWBYiJiJX0z41mJcK+Unjw4103g
 SSMQ==
X-Gm-Message-State: APjAAAWcZnndcQUHAml/DAd6j7MCsFsihsJXtj3fBerVWvoOqp+iQhPN
 WD5pPnJH87hYqjLATsXXlcPcKm5VnLY=
X-Google-Smtp-Source: APXvYqyCoh+xJCsab8flt4uMlmdSfg3r6dESrr8dKxhRDYQoENyta670j1UFeOejesWZDIzg2uijjQ==
X-Received: by 2002:a6b:c90c:: with SMTP id z12mr110288942iof.11.1561406606265; 
 Mon, 24 Jun 2019 13:03:26 -0700 (PDT)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com.
 [209.85.166.51])
 by smtp.gmail.com with ESMTPSA id c10sm12571987ioh.58.2019.06.24.13.03.24
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 13:03:25 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id u13so402152iop.0
 for <linux-rockchip@lists.infradead.org>; Mon, 24 Jun 2019 13:03:24 -0700 (PDT)
X-Received: by 2002:a5d:8ccc:: with SMTP id k12mr30848489iot.141.1561406604290; 
 Mon, 24 Jun 2019 13:03:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190621211346.1324-1-ezequiel@collabora.com>
 <20190621211346.1324-3-ezequiel@collabora.com>
In-Reply-To: <20190621211346.1324-3-ezequiel@collabora.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 24 Jun 2019 13:03:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V3dq0qS2Finw7gxbZqyRvuLqGv-573LHX+41odjBOTxA@mail.gmail.com>
Message-ID: <CAD=FV=V3dq0qS2Finw7gxbZqyRvuLqGv-573LHX+41odjBOTxA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] drm/rockchip: Add optional support for CRTC gamma
 LUT
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_130327_180161_0BA37D5F 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Fri, Jun 21, 2019 at 2:14 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Add an optional CRTC gamma LUT support, and enable it on RK3288.
> This is currently enabled via a separate address resource,
> which needs to be specified in the devicetree.
>
> The address resource is required because on some SoCs, such as
> RK3288, the LUT address is after the MMU address, and the latter
> is supported by a different driver. This prevents the DRM driver
> from requesting an entire register space.
>
> The current implementation works for RGB 10-bit tables, as that
> is what seems to work on RK3288.
>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> Changes from v1:
> * drop explicit linear LUT after finding a proper
>   way to disable gamma correction.
> * avoid setting gamma is the CRTC is not active.
> * s/int/unsigned int as suggested by Jacopo.
> * only enable color management and set gamma size
>   if gamma LUT is supported, suggested by Doug.
> * drop the reg-names usage, and instead just use indexed reg
>   specifiers, suggested by Doug.
>
> Changes from RFC:
> * Request (an optional) address resource for the LUT.
> * Drop support for RK3399, which doesn't seem to work
>   out of the box and needs more research.
> * Support pass-thru setting when GAMMA_LUT is NULL.
> * Add a check for the gamma size, as suggested by Ilia.
> * Move gamma setting to atomic_commit_tail, as pointed
>   out by Jacopo/Laurent, is the correct way.
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_fb.c  |   3 +
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 114 ++++++++++++++++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h |   7 ++
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c |   2 +
>  4 files changed, 126 insertions(+)

Looks happy to me now.  Since I'm not a DRM expert and almost
certainly don't know much about gamma LUT, take this as you will:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I'm not in front of my veyron device at the moment, so I can't re-test
exactly this patch so I won't add a Tested-by tag.  However, I'll note
that earlier versions worked for the test app I was able to find in
Chrome OS and I'd imagine this one does too.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
