Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B78E4AD363
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Sep 2019 09:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsGdOUJfwfsj/t3j6O11JzjpYAUESm5F0QMp5vZxcOM=; b=k0eoy4+Hx1ciXi
	iFoi5/KlFqUS9BAvZLro7WB273+XPkx32+1zIOyOCo23WiL1P7R8N72jSJjIDvcntruADlxwBumOE
	x3n3ncceMCX58oEXRXQsjvRs47HgP4qu3R4ZVltMdI1IlToSkYulqtAbibJTHPLOd8ney615nAcoQ
	Usj+B+bDSJdxnmK7dDgXFz9XYOij1KxPUcrBgBunM2Jf7eMfZHFYiE8la/gKGqMu9X0l0nPJJPumw
	0IPtJfLNE7dnbKzqo9C8bfEbQO7TukGDJusnv+iZrRE7mgWc4BlG9vpD7gmhNyszvzIXqu6KfXQHm
	S92asdDwsm5KsO+Rr2BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Dlx-0006ZC-UL; Mon, 09 Sep 2019 07:07:38 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Dlt-0006Yj-0b
 for linux-rockchip@lists.infradead.org; Mon, 09 Sep 2019 07:07:34 +0000
Received: by mail-ed1-x52a.google.com with SMTP id v38so11955167edm.7
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Sep 2019 00:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E7baXewTAua+joMBqN+PONafBB7mQNjs1v3RxfEi6pI=;
 b=QtqdF6lJNZmLllCpM9EE3NcS1KCgDXdfydif2HQ1R0KnHd8zg+JgNYh0hel3ACw1Ps
 TWVUfH1vdXcp2+v19Ij5cl1eKt9T1KHXNyyGl2w5MHB+0OKkky+xNAiH9sRPlMp/PndC
 +n2Z2sd3fh/lzEi85SIziQjyUuxtzKA9DSlz8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E7baXewTAua+joMBqN+PONafBB7mQNjs1v3RxfEi6pI=;
 b=LbkkjiL3rlpTd0RaiEiDMJ78IH+6GNRXkYnTpqW6m7diCxiI006UL6cJkLtZX7raAY
 NzpI7Jvch68hODBxGjtcqbZ4KgLDvU/H+J18Y5wxVpzD6ZlOZGCN2FEN9rGD1mRiDWqh
 gmtc7TIHL6lM22jX7LCDXPWLq43E6PClLqd65mT8x6MRRdqB3ljw3wUji8HQfapBoEVh
 PeZfz6jdJLz9nuNn9tIeYlTAsCjGdINGPHFY4VVURKFz52vV6kflYLN+6aG9+hmKGJGq
 m+5YCsouJHC4gfrudof5F5WIbMy2p3VpR2GWy7AaJdo4wLW/+7yllxukAMbDCVyfaEYZ
 teGQ==
X-Gm-Message-State: APjAAAX9ZSfZQkJP6WH0h97gsOY80fJFEm2rH5BwylR0cqGo8Wn1Yqia
 /r37QgH9WMFSiOvvLTPmfv2x3jqTdqLlGw==
X-Google-Smtp-Source: APXvYqwjnBSaL6770ckR0aiftcuamsLt1lGtFT9qdQDh+NtRVKINmLWcmwu90s8xZ0mrqyzy7fDSFg==
X-Received: by 2002:a17:906:400c:: with SMTP id
 v12mr17885277ejj.15.1568012850464; 
 Mon, 09 Sep 2019 00:07:30 -0700 (PDT)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id w26sm1676562ejn.66.2019.09.09.00.07.28
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Sep 2019 00:07:29 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id k6so385972wrn.11
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Sep 2019 00:07:28 -0700 (PDT)
X-Received: by 2002:adf:e503:: with SMTP id j3mr17253950wrm.166.1568012848329; 
 Mon, 09 Sep 2019 00:07:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190903181711.7559-1-ezequiel@collabora.com>
In-Reply-To: <20190903181711.7559-1-ezequiel@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 9 Sep 2019 16:07:17 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AdikoN+7TG=0ZGFkSzaK2UFHM4VG7SYtfUtmjQgD61zA@mail.gmail.com>
Message-ID: <CAAFQd5AdikoN+7TG=0ZGFkSzaK2UFHM4VG7SYtfUtmjQgD61zA@mail.gmail.com>
Subject: Re: [PATCH 0/4] Enable Hantro G1 post-processor
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_000733_260634_90279CDC 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52a listed in]
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Chris Healy <cphealy@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Ezequiel,

On Wed, Sep 4, 2019 at 3:17 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Hi all,
>
> This series enables the post-processor support available
> on the Hantro G1 VPU. The post-processor block can be
> pipelined with the decoder hardware, allowing to perform
> operations such as color conversion, scaling, rotation,
> cropping, among others.
>
> The decoder hardware needs its own set of NV12 buffers
> (the native decoder format), and the post-processor is the
> owner of the CAPTURE buffers. This allows the application
> get processed (scaled, converted, etc) buffers, completely
> transparently.
>
> This feature is implemented by exposing other CAPTURE pixel
> formats to the application (ENUM_FMT). When the application
> sets a pixel format other than NV12, the driver will enable
> and use the post-processor transparently.

I'll try to review the series a bit later, but a general comment here
is that the userspace wouldn't have a way to distinguish between the
native and post-processed formats. I'm pretty much sure that
post-processing at least imposes some power penalty, so it would be
good if the userspace could avoid it if unnecessary.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
