Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E2817AB1C
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Mar 2020 18:03:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bucycyiE6HFDkntFbwDtLirNIq9/09/6tavQlhruuEU=; b=GORZiNnhrX3vwQ
	7a0gUMUAOaywOUojldGUOZVmRylhQV3Ruz0OlR5efCb+rMDKX2kFFh7u1/d8RZ3oqcsFTqpDJYyQ9
	0tmIvdkF/PWpz5+tyQ/jpRRr0U165EX0/xelyE7u4IOsVwPqAo8AVcprpt3eCjEkW2+8vaaYXSNi+
	92iddmkLpkZQFlvIITroRQ9VjaSPK1tmlgx7u2yWMFpCTfQDEIdYjHsK8SrhVt4GZZArJy6KOF6Zs
	HkKkjrCMeZzkyIZioee1JD73b1vvAVXrP2t2A18EEppCBzldozmYCFNuWCSAejQo0qTxKaB6xH6Rj
	JNoa8EPbc1T8ZisvD9IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9tuA-00076y-Fm; Thu, 05 Mar 2020 17:03:26 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9tu7-000765-N2
 for linux-rockchip@lists.infradead.org; Thu, 05 Mar 2020 17:03:25 +0000
Received: by mail-lf1-x142.google.com with SMTP id z9so5266921lfa.2
 for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2020 09:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W2UjAEkYLoxg6JgLNx0dN+e49hTl06XZg+T5mliqMNU=;
 b=QdJpsICtDG2FI/4Z9M6lKYAcG0BpjpbXK8rLQyA4OEixlsxjDiGx3To1lir1sBp1M9
 UwuoRwaVCnVgUPq4inbZJ3TxCkxCrFEJn1E6DTKoLoG9iHe+E01qy4ui4vtj9Q36JSXp
 ZqI3vZjzXINJNR2WZQYS26NJieBM4iEKc5bwAVwHReucih3l3k93tS1OUlLleRX0o1y1
 KtuaE/jXH3s5Pdf2YA/jnZsd2GI9LGTK5wvLZgDIrxGSZbyinFeR134NKThtgyXxUoJU
 f3VfKoFSVmnBne9A3FTkdC4acYw5/x1ZZwLrZ04c0wXHMYb/1RofGGRyRmlBqM+aIrD4
 1aQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W2UjAEkYLoxg6JgLNx0dN+e49hTl06XZg+T5mliqMNU=;
 b=UveuX28GgDF+aqmF3Aaz1Kie6/eBYccPOExBlw8ILfoOzO3B4mjlQ8/qmWOBqOYNXM
 6ERkkfqBIB1JgAlPYTJkPr6Pkv9LVLFe3LwfaUY99U/jn+LUNlc3aNiVkxjZ+ygSuxqi
 e+qafBw7HqBSwglXPQIeqXCOkxP9YdJ0nZHuhTwuItkTomGrrIZx33avXId8FrjESbbP
 MA6eQDvJ0aSdYIW+je3WjyRtbaVWUyUMnWShyXgsFbry/ZjDuDyQdx5X2CvgmbQmw90Y
 YUPYPSLk82A3EM9b32FSPFRTDLiBqj3p6pnblsC3BmP9l53xjg/MnwJJhHQhgCF3TerQ
 Yghw==
X-Gm-Message-State: ANhLgQ038HMkbbD79f5BC+j8oSLvch2e0o7vqUkjGEqiR21yVHDt5/K1
 ARBKio4IRl462csdP9nwuEFAhNdxVNrTAt4wZj4Y7w==
X-Google-Smtp-Source: ADFU+vtj5gp1/LY+e6ph9lZLVyP4h9/sF6S8jMp7MXl11AHO2LcgdwYrHVm+Ah8nGom52hUhqSxPo5r0KmpWtLmClCc=
X-Received: by 2002:a05:6512:692:: with SMTP id
 t18mr6077856lfe.212.1583427801701; 
 Thu, 05 Mar 2020 09:03:21 -0800 (PST)
MIME-Version: 1.0
References: <20200305155950.2705-1-tzimmermann@suse.de>
 <20200305155950.2705-19-tzimmermann@suse.de>
In-Reply-To: <20200305155950.2705-19-tzimmermann@suse.de>
From: Eric Anholt <eric@anholt.net>
Date: Thu, 5 Mar 2020 09:03:10 -0800
Message-ID: <CADaigPXaBRx+DG8TP-BPFycqwzmf-2NMQX6cXQP69MTVE6CzAw@mail.gmail.com>
Subject: Re: [PATCH 18/22] drm/vc4: Use simple encoder
To: Thomas Zimmermann <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_090323_891740_DE57033C 
X-CRM114-Status: UNSURE (   5.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: hamohammed.sa@gmail.com, alexandre.belloni@bootlin.com, heiko@sntech.de,
 David Airlie <airlied@linux.ie>, stefan@agner.ch, linux@armlinux.org.uk,
 paul@crapouillou.net, linux-tegra@vger.kernel.org, thierry.reding@gmail.com,
 krzk@kernel.org, sam@ravnborg.org, sebastian.reichel@collabora.com,
 linux-samsung-soc@vger.kernel.org, jy0922.shim@samsung.com, hjc@rock-chips.com,
 festevam@gmail.com, abrodkin@synopsys.com, kong.kongxinwei@hisilicon.com,
 patrik.r.jakobsson@gmail.com, jonathanh@nvidia.com, xinliang.liu@linaro.org,
 ludovic.desroches@microchip.com, kgene@kernel.org, linux-imx@nxp.com,
 ck.hu@mediatek.com, linux-rockchip@lists.infradead.org,
 virtualization@lists.linux-foundation.org, p.zabel@pengutronix.de,
 puck.chen@hisilicon.com, s.hauer@pengutronix.de, alison.wang@nxp.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, inki.dae@samsung.com,
 john.stultz@linaro.org, jsarha@ti.com, matthias.bgg@gmail.com, wens@csie.org,
 kernel@pengutronix.de, jernej.skrabec@siol.net, kraxel@redhat.com,
 rodrigosiqueiramelo@gmail.com, tomi.valkeinen@ti.com, bbrezillon@kernel.org,
 jingoohan1@gmail.com, DRI Development <dri-devel@lists.freedesktop.org>,
 sw0312.kim@samsung.com, nicolas.ferre@microchip.com, kyungmin.park@samsung.com,
 kieran.bingham+renesas@ideasonboard.com, Daniel Vetter <daniel@ffwll.ch>,
 zourongrong@gmail.com, linux-mediatek@lists.infradead.org, shawnguo@kernel.org,
 laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Mar 5, 2020 at 8:00 AM Thomas Zimmermann <tzimmermann@suse.de> wrote:
>
> The vc4 driver uses empty implementations for its encoders. Replace
> the code with the generic simple encoder.

Acked-by: Eric Anholt <eric@anholt.net>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
