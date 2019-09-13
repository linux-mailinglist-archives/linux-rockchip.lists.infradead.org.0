Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E82C7B22FC
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Sep 2019 17:06:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AznUAx0i4r5FnBSpnOSm3TWsjt1yGrc9vwPfosr5L64=; b=RLhXj3XOr0dUIu
	kBRfdCGi9GZrxpRJt//S6DHpkkCRvQ6Za9U3q/mcbxuHJlobUVJuAJpZIi/ODc4BirfUaFIHGIk3J
	aIZNQBeurAeNQZwpQ6V5QJuF2Aujz8nZYVR17s57lW71VQoFgDW3w/vFUs4TS8PpPoFQ1ed1jo1Rw
	B1W7MipofBHRl2+YpIFuyTKqaqe8sTRpoJPOuWFqmwojDk+j4qBTdRC+VsfvP77kwUwXJcI4aQjWp
	0uGQzsQWpSwQb2BSWruFAxnU2wS+dsAz8M5/PlgJXhiGxe7k16xd4LjdDu2UGZWEAVPuQPZoq1FAD
	EmHoKRCUw6e8w4ZyabOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8n9U-0008QL-4Z; Fri, 13 Sep 2019 15:06:24 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8n8b-0008GU-74
 for linux-rockchip@lists.infradead.org; Fri, 13 Sep 2019 15:05:37 +0000
Received: by mail-wr1-x42a.google.com with SMTP id l11so32404556wrx.5
 for <linux-rockchip@lists.infradead.org>; Fri, 13 Sep 2019 08:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MpB9xxtl/MU2sXoxTf/8YbSo05dgTc3BL3DERht3h/Y=;
 b=NNAzEppuSWdT2wI/CPjzgJWr18cyKPMzGqa6W9Yn8stxXtQjEeZxbTjdDgXrcADr8I
 Ql2NXvi+bPWNi6JvtxK5VtuHutGrFWMcMj7Vae85tOWnHvXNYlKOJhpSYjgjFQ78l572
 RxZQwYbHyRkdlN/t4vRaOHTcbIAWfzrEB/OoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MpB9xxtl/MU2sXoxTf/8YbSo05dgTc3BL3DERht3h/Y=;
 b=a9O2MJQVmZb6T5x315PaYa9R0YP9c8mY4He+EW8a7bY90AtM7IGOcrsgb8vEb6cU5J
 aCV+m04DPaC0DxiNCull8yYvXRiA0DLkf+sw5a41ITvGx5rlW29RIeMlG0r6nB9bYT5n
 GiyhkRw8ZUlb37wGamNpf2mCpLPxsadYdbts8QFq83vU7JV5Zi6seYpn98Vy3j0Gvxk7
 EBvH8AJ+WUK0aMZnDJDSkQSRef1LISd/OIg5pVSI2iIaJZxUO1g1p6C3yIzPXwVwh0Zh
 HXDSU9HGroeUUFWc1a4UZniD2WkaK8Yp49i08DgGd+z0Obz2efpdE5GqJVfccUs3Wzbs
 UI2w==
X-Gm-Message-State: APjAAAX5ooGXzk75BxYdiWdvoW4uoYXV5Gj1m6o4w3icq0jMjbBujHm9
 thuTE9v1D1SVGN0zgVejiETxVGuY8gt93V3WAagpKg==
X-Google-Smtp-Source: APXvYqzV79pV2yAEBHbMbbE2eGU/8c9Psz1dj6j8/mGuHpLxNANT8ZdVmPNn3dUplF7v08/k1UOtldEK+lwP07DgQ38=
X-Received: by 2002:a5d:4146:: with SMTP id c6mr19740767wrq.205.1568387124534; 
 Fri, 13 Sep 2019 08:05:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAMty3ZDo6Hk9swGcaZ0RNC-4KeQ=EJS9gu_-+ewmM618GHhO+w@mail.gmail.com>
 <20190913160129.0cc8bc99@crub>
 <CAOf5uwmUWXN27rNZ3JR13QSTH3NpGoODvySsCeUtrRE14Kq--Q@mail.gmail.com>
 <CAOf5uw=TpMsy54SWMXV=GjoNbvk_cW-Rvf0C3AP_0=mPM1q7HA@mail.gmail.com>
In-Reply-To: <CAOf5uw=TpMsy54SWMXV=GjoNbvk_cW-Rvf0C3AP_0=mPM1q7HA@mail.gmail.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Fri, 13 Sep 2019 17:05:13 +0200
Message-ID: <CAOf5uwksWBMPFPQ-FKa0EKE6tCc4tU-qqQ9KyYDHX3hMgLk3BA@mail.gmail.com>
Subject: Re: [U-Boot] rk3288: HDMI out causing boot hang
To: Anatolij Gustschin <agust@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_080530_732917_8314B0F1 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi

On Fri, Sep 13, 2019 at 5:02 PM Michael Nazzareno Trimarchi
<michael@amarulasolutions.com> wrote:
>
> Hi
>
> On Fri, Sep 13, 2019 at 4:02 PM Michael Nazzareno Trimarchi
> <michael@amarulasolutions.com> wrote:
> >
> > Hi Anatolij
> >
> > On Fri, Sep 13, 2019 at 4:01 PM Anatolij Gustschin <agust@denx.de> wrote:
> > >
> > > Hi Jagan,
> > >
> > > On Fri, 13 Sep 2019 08:19:47 +0530
> > > Jagan Teki jagan@amarulasolutions.com wrote:
> > > ...
> > > > Any inputs?
> > >
> > > Try to input "setenv stdout serial" command on the serial console.
> > > There might be a chance that stdout/stdin has switched to the
> > > video console and the output proceeds there. If the HDMI display
> > > shows nothing, it appears like a hang.
> >
> > It's not an hang. It's the output is not shown. I'm trying to
> > understand the reason

It was a bug of the old uboot

commit 79cdcaced710d955f68066d02327b86be573339c
Author: Niklas Schulze <me@jns.io>
Date:   Sun Jul 14 10:40:13 2019 +0000

    rockchip: video: rk3288_hdmi: Add missing call to dw_hdmi_enable()

    The RK3288 HDMI driver's rk3288_hdmi_enable() currently lacks a call to
    dw_hdmi_enable(). Thus, the HDMI output never gets enabled.

    Signed-off-by: Niklas Schulze <me@jns.io>
    Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
    Reviewed-by: Kever Yang <Kever.yang@rock-chips.com>
    Reviewed-by: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>

diff --git a/drivers/video/rockchip/rk3288_hdmi.c
b/drivers/video/rockchip/rk3288_hdmi.c
index 315d3adf27..3d25ce924c 100644
--- a/drivers/video/rockchip/rk3288_hdmi.c
+++ b/drivers/video/rockchip/rk3288_hdmi.c
@@ -33,7 +33,7 @@ static int rk3288_hdmi_enable(struct udevice *dev,
int panel_bpp,
        /* hdmi data from vop id */
        rk_clrsetreg(&grf->soc_con6, 1 << 4, (vop_id == 1) ? (1 << 4) : 0);

-       return 0;
+       return dw_hdmi_enable(&priv->hdmi, edid);
 }

Now I need to test the mainline one

Michael

> >
>
> I have fixed, still not so good ;)
>
> Michael
>
> > Michael
> > >
> > > --
> > > Anatolij
> > >
> > > _______________________________________________
> > > Linux-rockchip mailing list
> > > Linux-rockchip@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> >
> >
> >
> > --
> > | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
> > | COO  -  Founder                                      Cruquiuskade 47 |
> > | +31(0)851119172                                 Amsterdam 1018 AM NL |
> > |                  [`as] http://www.amarulasolutions.com               |
>
>
>
> --
> | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
> | COO  -  Founder                                      Cruquiuskade 47 |
> | +31(0)851119172                                 Amsterdam 1018 AM NL |
> |                  [`as] http://www.amarulasolutions.com               |



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
