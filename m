Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B154754AF
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 18:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vn2nLU4KfrAHYC8iFIXgRi6Q9UuP9q1HkuUlcnwvQFA=; b=sqhHjqOZmMtA9x
	v2PU7UrKaP/ReP1YBkXvn7GG0y3avq4tRWiMUcnBTKc83a8nhPvKwd45f+pwflgvJHuzbBnDzD2V2
	8ICXC97DOh2YoBXQoH5aQxhUcUl2IyS9zhZOfmnwI6gKgl0xsLnVl68y7/b+okidnR632MRFLi0VD
	pTWxuCQZ+KEaQRyTKfyGic6nsFDEWdt6Pv8WKQUZ6LgfWljeR6XvYCdUqrDUf0dr6iDPBxAAx+2m6
	xcTuTl6OGl+uPZmV9ohBJa1dtxENK7UCF6NrDUf19PLcvmLlFQFkAL7T4IK0t5DzSgG48q3YMdJQO
	CbZ4NaY+knnQhggLXBOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgzs-0002rl-Nn; Thu, 25 Jul 2019 16:53:40 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgzp-0002qO-Py
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 16:53:39 +0000
Received: by mail-io1-xd42.google.com with SMTP id k20so98657339ios.10
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Jul 2019 09:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kolA9oGTMt2kJuYg8zC6oRG5UHIMOnhc3kiBOYsRrZA=;
 b=IPSevJy2liwkLBHgCIP++Od2vm8pxaK7qAFqKLBz212Z655uA/9ROOg+s5IaImVzfs
 mp32U3H4iTgV7TrIOZ+ToG924T9y/qluKpRZOuijot3YOobPniwSFgN0j+k3iBv5Ur+V
 vqSmZD4y6I1UTcz6Rz2aS0nGWj9Ge5ijQbM4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kolA9oGTMt2kJuYg8zC6oRG5UHIMOnhc3kiBOYsRrZA=;
 b=K45elOWIAPZLTS+QFOEm1HBrBB2bR8tv2pchPNcq3F8d8EtLbMnsHf5GQ5bpKgi6Ju
 b0PeyqKQljO+Wa/Cmn3451FHqxy+T/63mWm4+pEp39GBaIoBTbfgiGT5bd4y3DgfHzc7
 zQ55YkjlqRObCYM8o1Csq3cRfXhiQA7APoC5dHDzTlU7ftm1XC6VBLEEhryi8Bj3PVms
 fkNK/0pXsh5/bnzqeuBLfWok1CSdnA3vBsA76flXIUg1nvD57befoIm6glXPYW1n29AO
 rRbQHraPbJ9niZmO6rzBosq0ZHza/+xLOGPmBu2Hnv4/vYGye3JPNxRaKwq3VRVAlxih
 IBew==
X-Gm-Message-State: APjAAAUKpJron55MFuZj5vFSiJztVzmerhkd+9HMYuoAzVjzU58BptKS
 /ikeXrI8pxm2Z1C7ix36s2xSANn5g3U=
X-Google-Smtp-Source: APXvYqybePmFV9wx2AstB5RAf8cceVPlfLjEFvQcf7C1uybm/1bxWh5pHD5AW6mreYpL/PxZf/l+GQ==
X-Received: by 2002:a5d:9416:: with SMTP id v22mr13752061ion.4.1564073616515; 
 Thu, 25 Jul 2019 09:53:36 -0700 (PDT)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com.
 [209.85.166.54])
 by smtp.gmail.com with ESMTPSA id p3sm42752608iog.70.2019.07.25.09.53.35
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:53:36 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id h6so12134985iom.7
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Jul 2019 09:53:35 -0700 (PDT)
X-Received: by 2002:a5e:c241:: with SMTP id w1mr77963588iop.58.1564073615649; 
 Thu, 25 Jul 2019 09:53:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190725162642.250709-1-mka@chromium.org>
 <20190725162642.250709-4-mka@chromium.org>
In-Reply-To: <20190725162642.250709-4-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 25 Jul 2019 09:53:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VZur9gPvUnRtdwieqkjMxx1nOabaRXjMsQ7hZwgNVE5Q@mail.gmail.com>
Message-ID: <CAD=FV=VZur9gPvUnRtdwieqkjMxx1nOabaRXjMsQ7hZwgNVE5Q@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] dt-bindings: ARM: dts: rockchip: Add bindings for
 rk3288-veyron-{fievel, tiger}
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_095337_848212_527D5F06 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, Jul 25, 2019 at 9:27 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Fievel is a Chromebox and Tiger a Chromebase with a 10" display and
> touchscreen. Tiger and Fievel are based on the same board.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v3:
> - patch added to the series
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
