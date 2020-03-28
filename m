Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD86196501
	for <lists+linux-rockchip@lfdr.de>; Sat, 28 Mar 2020 11:20:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=woJftGvyvG/rHBQJapn3ufH+UcrRZD2AqKhZs063L8U=; b=s5yNMkKVidsW3/
	YaJXzsePvDi3NehpSAvGRJD78XrmfNMoYmA8IXtW5HcEtbRBf0uvddYkEFMKQEQhDG4lqVedQMRVJ
	D4li2QD0SmT5ZN3pR5OQOS6kxaCn7DCzZG36S/8yog6selHnohy1Br9GsS+qKupNxdekd5k5V/JWH
	04Mtqmpevqb6bkV8g4dk0nLXZenYz1IFiQ+zQNkS8XJl38cRDxKHSWRgPhoAxWtMP/fPQ0XKN6VL5
	jHbqB/PppOfpjR/QhE1GsB9r4yRLz5UcRUbUm930ZbYmuUZacbNvoda2sBOt9pDUBmsFE1PLoqjvt
	qi8qNhaFwmr6pBUBXhIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI8a2-0007Qq-SF; Sat, 28 Mar 2020 10:20:42 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI8Zz-0007Ov-7i; Sat, 28 Mar 2020 10:20:40 +0000
Received: by mail-ed1-x541.google.com with SMTP id cw6so13880262edb.9;
 Sat, 28 Mar 2020 03:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fe7vSqTovofs2pbqQ9vBZGE4ICdZzytA51ufbrvug5A=;
 b=gZzoGR9pE2WwhIDeENQCW/x6kpV7USjpLVpyp0uH7+Fq6u4Pr6VyHGy5MxT65P1Jpw
 2IwFjZAWystaYH29GKa4oevh37fKQClAFd/6sCfi35W9/6H9b2st92hznyzG7txJxifb
 /rOL5DyfJHFcQ1DEf9C9BCL3MHhibBA+GsdlWkc2rtg4LaQNcOoG8QB05tzrj49/0eEl
 TNgbeY007ZskTRpSiblMaihBN7H0uViDxG4hyT5N99Ih65I26eZdiIXjHM30n+J5tKLq
 f17zIR90Cyfv7UAgzMoz+/WEq+n+OILmc0z/EbKvXtKix0P6yR+vJ4s4g6k4anerM3wJ
 WYtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fe7vSqTovofs2pbqQ9vBZGE4ICdZzytA51ufbrvug5A=;
 b=UWXjAKPVayFCiv71095VbF8n5HXrgM9STCzaxoQmDce0CrJ9+hzOsO9AFmmuciAv3P
 D5FIqUVf+Za0TynVCEKOkgtlOjO3G7SZwMBXQXPX/NGMumvw8hiceXR6/hqAT73cIU0I
 nQc70LormfO8Oc7F+j+X9+iw2s7zxNCR6cbnwdSL8padD6vHyMBvZCXDGOdNllKzbMep
 lxOqMYnzFnxywEUOet4UnXzSEhiFK8k8Say2mvaIGSeJS2uBgXT+vg/EZc/uqowERv3b
 5KB9Q3hoE+7kyUR+yLv/sPHY25v7q6mp1LinBY4E9DhnkEDHxoJQYhLpRGs9EivDnFfW
 zxhw==
X-Gm-Message-State: ANhLgQ3ABj2Dx00qq8vE8q/xPST2OXq+1RUf4WNvn1i59IITRpYb+qmR
 Ws2REBD4V5qZue9cuJEu9C+LfjyfC1r1anivD5XqBYnj
X-Google-Smtp-Source: ADFU+vt+CGOstPPiyOkXccPeNwU+SbD3xZ1o9QkolQ8v/Gi9v/pdo4TjR6yY1eJHtp+rIWU3zHv5rAEhRHHb9xghbBI=
X-Received: by 2002:a05:6402:b14:: with SMTP id
 bm20mr2831787edb.365.1585390835491; 
 Sat, 28 Mar 2020 03:20:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200319203427.2259891-1-martin.blumenstingl@googlemail.com>
 <20200319203427.2259891-3-martin.blumenstingl@googlemail.com>
 <CAKGbVbtKqdCEcawkjG=7TRd30df6GJ+gagV_JegntyqRpzC4cg@mail.gmail.com>
 <CAKGbVbvAvk0L5sGQmuqfxeL6AwtVnSsYyCp6YBYV6ZHKepWBXg@mail.gmail.com>
In-Reply-To: <CAKGbVbvAvk0L5sGQmuqfxeL6AwtVnSsYyCp6YBYV6ZHKepWBXg@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 28 Mar 2020 11:20:24 +0100
Message-ID: <CAFBinCDUhVaky6EUA7dOAhAZM9itbydQ+w=0P-1m2u0o0HUUeA@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] drm/lima: Add optional devfreq and cooling device
 support
To: Qiang Yu <yuq825@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_032039_302785_B79020C1 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 linux-pm@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 9:40 AM Qiang Yu <yuq825@gmail.com> wrote:
>
> Applied to drm-misc-next.
thank you!

regarding patch #1 - can you apply this as well?
patch #1 just takes this midgard change [0] and ports it to utgard


Thank you!
Martin


[0] https://cgit.freedesktop.org/drm/drm-misc/commit/Documentation/devicetree/bindings/gpu?id=982c0500fd1a8012c31d3c9dd8de285129904656

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
