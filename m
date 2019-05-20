Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D1524444
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 May 2019 01:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90mjqFmUalypHYaRysZDWzix3ZM82KHLLePAcDQUYQY=; b=HGjTCVeEMxCRhR
	w9olCF7OG4+aYJuA/jKraMyGJHkOMJuavLt2AJnq2jh5LWMMNCmZ8wt3SdN1A0NVJcik2mfP7encX
	+4AJlMKY2y0ck7F2OH5JgSkpJbb0w0/uqLGzK+yZFIMy82Xt8s2SNV69/uQpAKHDVpiS16FM5AUxP
	tmWeB9RyAgyx2IhtHaSz7jP8cjzN2/q06Mo87ImgkRYQQEH2GC7yEpsOrRVYxP4UhLjxhR0VbxAqv
	lt8FYZ9YQ50tS+JEQzyPbGRTgbqoDbJN1nSHapnJ8HGefJVaxhckUrANNTCx2z9SIhJ+qiCSuVV4L
	sZIHdwOI+OKq1cEFXusw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSre5-0001p7-4A; Mon, 20 May 2019 23:24:41 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSre1-0001o6-EC
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 23:24:38 +0000
Received: by mail-vk1-xa44.google.com with SMTP id d7so4349657vkf.1
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 16:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZR/L7Hf828I4020IYpCxcxcft8SiYhAJProPc5vXrzU=;
 b=Wl9L0AJOEI10bssx6lat9jgrA3rPKbO8BogUuRNHLDN7Ve5zvOpZnNKVUMTpQBBSvA
 p/ROLEzSFq3wxGQ6g2TbkeeBcO4ve3Y+PyFFmeHbkUyvbi63Vy39FzWnFqQ/iYDf8s83
 1rVab5Txti5C4wfalrdFVBqPk8IPgB+yp/yHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZR/L7Hf828I4020IYpCxcxcft8SiYhAJProPc5vXrzU=;
 b=CAMwq6ojwpYROPfHmYi2kHNdiSHhQUVA+OyJBCmA7SrdDK9FdFTWx2GeffYaj/3oqq
 l2AXPCkOKWOlXODi/WVR0yeql2nwBnnN5bJmEo/C0cuvirZwX9ZiiFqFHQ+0VDpO9k/K
 gfFf9fudebwA7uUiKyjPq1k45cAEbefqDi9pe2lxpZxQOIgpPWneuN0SxPHsLF0MgjGs
 Mwg4TPVYe9k10UBCUPhyO6ieeazvcGTTSgppPia86zBTdkP/mmfQ8Y7QqRdtnk1ZJNKI
 VjBCW+VhCt/dQPc/kL5qzwE86DlUzLKT4JOcmwgYLNutFERglNEecEsVz0vdJJssm4On
 Tceg==
X-Gm-Message-State: APjAAAUWYXEi4tRZ/zZgJ7z24yGuRV4vYVtplhpKCXzkXn7mR5BfCHfn
 puDTsOLCa9T/Ijs9yo9Xo7yHw993a8E=
X-Google-Smtp-Source: APXvYqzyZk+Tv5KYRvpsmEY/gseHRF5i8hA+gqj1T/Jx5kxxQDpiD6tu94NV7RYix36HvQPGlUFQuQ==
X-Received: by 2002:a1f:944d:: with SMTP id w74mr10661896vkd.38.1558394675816; 
 Mon, 20 May 2019 16:24:35 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com.
 [209.85.217.48])
 by smtp.gmail.com with ESMTPSA id w136sm14962994vkw.18.2019.05.20.16.24.34
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 16:24:35 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id q13so10024896vso.2
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 16:24:34 -0700 (PDT)
X-Received: by 2002:a67:f60b:: with SMTP id k11mr31398691vso.111.1558394674402; 
 Mon, 20 May 2019 16:24:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190520220051.54847-1-mka@chromium.org>
In-Reply-To: <20190520220051.54847-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 20 May 2019 16:24:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WxhL3FLYWvOoys3GOB68WVKinfgjTVK5byyzyTzVsyBw@mail.gmail.com>
Message-ID: <CAD=FV=WxhL3FLYWvOoys3GOB68WVKinfgjTVK5byyzyTzVsyBw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: disable GPU 500 MHz OPP for
 veyron
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_162437_478611_AF1EE210 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Mon, May 20, 2019 at 3:01 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The NPLL is the only safe way to generate 500 MHz for the GPU. The
> downstream Chrome OS 3.14 kernel ('official' kernel for veyron
> devices) re-purposes NPLL to HDMI and hence disables the OPP for
> the GPU (see https://crrev.com/c/1574579). Disable it here as well
> to keep in sync and avoid problems in case someone decides to
> re-purpose NPLL.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v2:
> - patch added to the series
> ---
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
