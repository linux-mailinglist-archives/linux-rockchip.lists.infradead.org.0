Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6346F194F87
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Mar 2020 04:06:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mzf625D3ZNXtqh9BcIUAMt97l0teBAtvdWdD9u1FzWM=; b=NBME6Q0gbEZo3L
	w4bkO5jTwRJhISTaKfzGE6UYD1Y9CV/1FW9hXouNiFjAeh9Ys30NhZ4p/oU3F3pxA45sa5i7mPM3R
	ZR8FXEYPQg6h0h1h9N3le9l9ij3aEV4etpCAqGoeB2Hq8AsYNIHJOQqz/MpG5qj3f7EIrSS3iPaeU
	n9D4rBzhVZEUb3ONgIuunWEh3mQmIrcR3Fwy89U4ZrtAtY60JEkZkzQRJcLHCtj68MjnBXkWlWCdi
	k/umgSAW83j17ZGRva8FASVSgUZ3KVnoDCowmr5y+mMy0y20Mvv5v8EtCGepkTWO//0ZwtalPfghm
	rT38Y38klQ8hQvMPhRSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHfKN-0007H6-KC; Fri, 27 Mar 2020 03:06:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHfJ7-0005l5-9v
 for linux-rockchip@lists.infradead.org; Fri, 27 Mar 2020 03:05:20 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6335D20848
 for <linux-rockchip@lists.infradead.org>; Fri, 27 Mar 2020 03:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585278315;
 bh=YIf6aQbdkDH1cQnI7Mm8lvierFh+tPaKpJdINhnNVxg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gscSa0b2I4VjrlYCOv6soG876N5HH7XtFKOr7CVoyAdEubKbOAJ2tJIWrq1LDaPTv
 2OgcQNdP2Smb82Ad4//KDNT/R+YSAMyUtelYOm0raw7jA6ZAs18OP02GBfdrLMIrk+
 4mrxLpUGuZIV9KQiswZsEDoDT2LpjukSVdhCuT54=
Received: by mail-qt1-f177.google.com with SMTP id i3so7475265qtv.8
 for <linux-rockchip@lists.infradead.org>; Thu, 26 Mar 2020 20:05:15 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1S6Ef2hooCNnDF58kcSQUprkBZZjdZWFVHEFhQC8ilSzOzWzgE
 2TLm1CM2Yf10zOg0zS2x5Vca+oRS/4/Hut2wbg==
X-Google-Smtp-Source: ADFU+vslGC615com2rm1wCgzAp5WB2w4yiciuQ1qMy22ERjZcJ2jcVj8Uw6zWW9MVqImCv+H7p5eSrCRLUyipOXv8/Y=
X-Received: by 2002:ac8:59:: with SMTP id i25mr12051193qtg.110.1585278314570; 
 Thu, 26 Mar 2020 20:05:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200325213439.16509-8-ezequiel@collabora.com>
 <20200326191343.1989-1-ezequiel@collabora.com>
In-Reply-To: <20200326191343.1989-1-ezequiel@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 26 Mar 2020 21:05:03 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ4sLE8mf=Ssg3wxbpf-f65i+YRkCBj+8DVGPonRA0=9A@mail.gmail.com>
Message-ID: <CAL_JsqJ4sLE8mf=Ssg3wxbpf-f65i+YRkCBj+8DVGPonRA0=9A@mail.gmail.com>
Subject: Re: [PATCH v4] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_200517_569110_29E7D772 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 1:14 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Convert Rockchip VPU (Hantro IP block) codec driver documentation to
> json-schema.
>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> v4:
> * Fix issues pointed out by Rob,
>   and make sure now dt_binding_check passes.
>
>  .../bindings/media/rockchip-vpu.txt           | 43 -----------
>  .../bindings/media/rockchip-vpu.yaml          | 74 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 75 insertions(+), 44 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.txt
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
