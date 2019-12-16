Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFDB11FCFD
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 03:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILAD024YymHIAqkhd9oo9mRhfJ5xlKtjlGqOD1mug4Q=; b=jpXmq6vfI65N7m
	e2WjnaEOe1lbAaqK/47qDK4Ip8x1JNQja18zLLJ1YJABqmsQ/OuDL6EKfJaddEH3Wj7nuT9Bp0T5x
	1Xp8NsrkP/w2kD6P8FWydGHi3p9kfKk2VV9ee38iCJ7CTB1cp7hKmqYfL8BKV1/W0xP9eHOlSoVgN
	1EMITwbfge5yDXeMaVVTu92XHAS0J6cfQHarUFhCDr9NqCWK2KxgZaFMmn50J+MXF2hYqmybvgM2J
	Jvltkh2OcyuB3msqVfdsLP34qfZtjVnN2AJjyh5IRu9zmE3Lb1k3n84ri0VSa3nh1iqk7bGSFuOOs
	8b3YrRfLfEyPk4zzLcuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iggU9-0005QD-OC; Mon, 16 Dec 2019 02:51:49 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iggU5-0005Od-TM; Mon, 16 Dec 2019 02:51:47 +0000
Received: by mail-ua1-x944.google.com with SMTP id w20so1570955uap.1;
 Sun, 15 Dec 2019 18:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Dt2N4SwdmDzKos7KOOuigco4w8TfoOXTqKozyp0A0x4=;
 b=eN3zEZj0WJFI6jBrvhlDydESyJ54sA6i7pO0dzNumgwquUT3cBMjt1kPXWPgLW3+KC
 O/9cPuh7+SCcZCEVWKiGl4Zs9dGE8yqQ02w1E4WnmdJIooJX5r/HWWSIZx+LYM5Gx8sh
 xZDmQj8fadMEQ0zsMW/4hfBKtzJZPbpfh2uo7OJsFUVjE2IYzjqoSxRffWaas85lHWYs
 FEeNRuQmA3WgSTH4Z+N/uv1NtKIesr1j4ANKbjbW9iGkgLYKCOrL1DwbXDVVlVbLyvEn
 pfLgUfG/9SZl0ixCu+Dk5YzqDa1nfiw3FzWVGQzdDb33P+zB6JVF4Vc2J9YNJw5Xj6yO
 8v/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Dt2N4SwdmDzKos7KOOuigco4w8TfoOXTqKozyp0A0x4=;
 b=YtgyExk92kfnt+nASKfkeGGzBd5NgFbKX8ojcDkd40Bhd09VD6oALGK+3H0cyS44Rf
 jbuEsldWCvKLxc4qMYst3wYP+NLnkcSd84l6C7dMeF7zkmT6cjf5opMrG7hT14mMZzDT
 GcIudJdRWW22ptQA1ly6n3UF0/5zEYs+z/uAOEr5ZTIg8wYbzfjfdiTgImqCQ3UIxGye
 yASNmC62USC06hNTuXzHHWCDWx5k0xHV0cqs8BN5vnmZNQiZvj62bPLIi5UeaV2tiPp5
 D3xDvRUpCEmFjvFkTFfuAWsetbfg9+HuGg/ukiOYELAPtp/C2C9g6Fy6QZQdKI0rWCkF
 01mA==
X-Gm-Message-State: APjAAAXEy57v9nPOAghAf+6HrnkCqZDX3nmUnp1BF2grw6FBeigjcbtQ
 bsOKmGF6yAuouUED4Wv0GL+/7sM4/1e1PH1Ujyw=
X-Google-Smtp-Source: APXvYqw3MpWIVLjyYNcUhZRmQiQ0xpTyg++SgIZJzbsAahqWonhwopXbf6c/t0aPRJJxhF5A45bTkX9URI3HMonCQGo=
X-Received: by 2002:ab0:7027:: with SMTP id u7mr21346813ual.94.1576464703537; 
 Sun, 15 Dec 2019 18:51:43 -0800 (PST)
MIME-Version: 1.0
References: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com>
In-Reply-To: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com>
From: Qiang Yu <yuq825@gmail.com>
Date: Mon, 16 Dec 2019 10:51:32 +0800
Message-ID: <CAKGbVbvj5zK9gVDQ3+0=xmF5pOUOSJzZ6jaGKHoCqwjYz+UiEQ@mail.gmail.com>
Subject: Re: [RFC v1 0/1] drm: lima: devfreq and cooling device support
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_185145_948542_E715E8F2 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yuq825[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (yuq825[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, lima@lists.freedesktop.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
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

Thanks for adding this.

As the license, it's up to you, I think it's OK for now.

For the code, I think you may need some lock to protect the time records as
there are two kernel threads gp/pp will try to mark GPU busy and several
interrupts try to mark GPU idle.

Regards,
Qiang


On Mon, Dec 16, 2019 at 5:12 AM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> This is my attempt at adding devfreq (and cooling device) support to
> the lima driver.
> I didn't have much time to do in-depth testing. However, I'm sending
> this out early because there are many SoCs with Mali-400/450 GPU so
> I want to avoid duplicating the work with somebody else.
>
> The code is derived from panfrost_devfreq.c which is why I kept the
> Collabora copyright in lima_devfreq.c. Please let me know if I should
> drop this or how I can make it more clear that I "borrowed" the code
> from panfrost.
>
> I am seeking comments in two general areas:
> - regarding the integration into the existing lima code
> - for the actual devfreq code (I had to adapt the panfrost code
>   slightly, because lima uses a bus and a GPU/core clock)
>
> My own TODO list includes "more" testing on various Amlogic SoCs.
> So far I have tested this on Meson8b and Meson8m2 (which both have a
> GPU OPP table defined). However, I still need to test this on a GXL
> board (which is currently missing the GPU OPP table).
>
>
> Martin Blumenstingl (1):
>   drm/lima: Add optional devfreq support
>
>  drivers/gpu/drm/lima/Kconfig        |   1 +
>  drivers/gpu/drm/lima/Makefile       |   3 +-
>  drivers/gpu/drm/lima/lima_devfreq.c | 162 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/lima/lima_devfreq.h |  15 +++
>  drivers/gpu/drm/lima/lima_device.c  |   4 +
>  drivers/gpu/drm/lima/lima_device.h  |  11 ++
>  drivers/gpu/drm/lima/lima_drv.c     |  14 ++-
>  drivers/gpu/drm/lima/lima_sched.c   |   7 ++
>  drivers/gpu/drm/lima/lima_sched.h   |   3 +
>  9 files changed, 217 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/gpu/drm/lima/lima_devfreq.c
>  create mode 100644 drivers/gpu/drm/lima/lima_devfreq.h
>
> --
> 2.24.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
