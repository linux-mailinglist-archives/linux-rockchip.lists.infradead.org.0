Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEE81980B1
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 18:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RdRJjTPSC0CdhgAK+rDgDkMFt5GJ+JBHTBH+Aim1SI=; b=FJx0RaptYi3MPT
	pvSj3RYAicXbYg/0xKCChSZP6poZW0dP6rlqiyA8JTlnSCjFD2rMCR5swvbkQP/RUJJl2iNbh0V/4
	51x5p4+F/iMB1tj2N6iBpcBhXFauoMOXCLJDvJCTcpZMTCkF0YxP4wHXDUvXrISMsVFqAyo06IyLa
	SgoW58Mm5+B5wpMTDBd8aRATMSGaodJATsG4QaNy1ex3mXMoh5zMo4+TAycHSscYDuJICGqKXQtN2
	8reoM9hCd/6v/noFfy39Bbr8LGwYS6azE/qk2jWkR3Tg+xoljCnVvne2sVkWNCbzOp2SSZ0pwRn/D
	zFjwDr9/6+2RYWGOADbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIx3V-0005Pt-B4; Mon, 30 Mar 2020 16:14:29 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIx3D-0005EH-Qs; Mon, 30 Mar 2020 16:14:14 +0000
Received: by mail-ed1-x543.google.com with SMTP id o1so3136038edv.1;
 Mon, 30 Mar 2020 09:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dJobNzydt2z0v/ZbYP8V/EAM8yQfDq9NQNIdReY6i2k=;
 b=CbCAOS+2vyQDV49z5Q479cHLj8GAB4lcScU2VvMy5M1jCnkk0zguYR5gA1l2f4ykzZ
 ZPPiLal5z8KwMQjEn9TOKOBx0YKPGbFh5/qvUWQ894W75v6m/DHoS2hXKaiBtjkYERZ0
 GNHY7p2E7U5sjB8YA9YZX/EJCvTDnfqOiFCZKCNvwG7g2S5yVssxvlNL8IHXxqWkiLp8
 JPQd5Vv8oDf12IHpaGLTEq6+UvjXbVN4wsrtCtaEBg4zxOjOkflozl6tiEH8sO8fWkaG
 tByAyHrEuhgo58H7BqxjIxdG6tL3fuSAtKxwpOfgcI2jl4lB3eaGbvBGr0816/x+ow+Y
 Zplg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dJobNzydt2z0v/ZbYP8V/EAM8yQfDq9NQNIdReY6i2k=;
 b=H3lN3+pmknkmR/hhvMYrJE0XBHSz0/CoqjYqgP8awyKd0J0iiCef9HEMLw1K6mHK5v
 MfxsHC6LKqdCvw/nwygzXcsUIln8l5wC8bFxgZ34rOk//oeem1jYIcpFVyH2nI+HOE04
 i7yeCdVN+0USkM00Iikr5X8bz2vzgUU0g6vxT/6KNNf/jzNqS7qyeo4WGX20KCDQxmR2
 sysgyv59BNA1F8UnG0QhLfHyVCagMdPZiVJRicGAEmMZq6L4UoygIuaNyhfx1s1PGO1O
 9T7ijhc5LBz1hu9O92gzXqwEw0xD05+jAU7+c2QnPa7LJYfkyhL9PeSXpehfKeFbNLBM
 Bhlg==
X-Gm-Message-State: ANhLgQ0PQnhMe7rAi5BZOnUbKSmavQ8coh6Zg9yvMnU1WIlrO6CdZACc
 VzxdHv9AF25ZS920jr7aviA6SL1VTYw78M2t6T8=
X-Google-Smtp-Source: ADFU+vuOB3aeFvwEcYOUE78ozTUow7H1nGM8LMWQR0KEdFue/dGm1Ar8xF2AwwVD4YG9hwILmlr3Mt9z+CgIu5quyKw=
X-Received: by 2002:a17:906:ccdd:: with SMTP id
 ot29mr11481877ejb.144.1585584850221; 
 Mon, 30 Mar 2020 09:14:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
 <20200330113542.181752-2-adrian.ratiu@collabora.com>
 <CAP-HsdRE=6b4v+MH64WVF1bExuC3MeDNiJFWgXTY0k34woP_Gg@mail.gmail.com>
In-Reply-To: <CAP-HsdRE=6b4v+MH64WVF1bExuC3MeDNiJFWgXTY0k34woP_Gg@mail.gmail.com>
From: adrian61 <pop.adrian61@gmail.com>
Date: Mon, 30 Mar 2020 19:13:58 +0300
Message-ID: <CAP-HsdQZ2SEsy34je5+EZM1wQzAqd22=yhQr4mZfPr5HnbZmmQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] drm: bridge: dw_mipi_dsi: add initial regmap
 infrastructure
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_091411_963991_0E932619 
X-CRM114-Status: GOOD (  21.96  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pop.adrian61[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [pop.adrian61[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 linux-imx@nxp.com, linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Forgot to mention mention DSI version 1.1, see ref manual for
STM32F769 for more details:
https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=2ahUKEwiRm4mhy8LoAhUP4BoKHaiLAJcQFjAAegQIBRAB&url=https%3A%2F%2Fwww.st.com%2Fresource%2Fen%2Freference_manual%2Fdm00224583-stm32f76xxx-and-stm32f77xxx-advanced-armbased-32bit-mcus-stmicroelectronics.pdf&usg=AOvVaw14nl_UqwBs39ORzC0yaope

On Mon, Mar 30, 2020 at 6:58 PM adrian61 <pop.adrian61@gmail.com> wrote:
>
> Hello Adrian,
>
> I am testing hese changes on my STM32F769-DISCO and i found that:
>
> On Mon, Mar 30, 2020 at 2:35 PM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> >
> > In order to support multiple versions of the Synopsis MIPI DSI host
> > controller, which have different register layouts but almost identical
> > HW protocols, we add a regmap infrastructure which can abstract away
> > register accesses for platform drivers using the bridge.
> >
> > The controller HW revision is detected during bridge probe which will
> > be used in future commits to load the relevant register layout which
> > the bridge will use transparently to the platform drivers.
> >
> > Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> > ---
> > New in v5.
> > ---
> >  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 208 ++++++++++--------
> >  1 file changed, 117 insertions(+), 91 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> > index 5ef0f154aa7b..6d9e2f21c9cc 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> > @@ -15,6 +15,7 @@
> >  #include <linux/module.h>
> >  #include <linux/of_device.h>
> >  #include <linux/pm_runtime.h>
> > +#include <linux/regmap.h>
> >  #include <linux/reset.h>
> >
> >  #include <video/mipi_display.h>
> > @@ -227,6 +228,7 @@ struct dw_mipi_dsi {
> >         struct drm_bridge *panel_bridge;
> >         struct device *dev;
> >         void __iomem *base;
> > +       struct regmap *regs;
> >
> >         struct clk *pclk;
> >
> > @@ -235,6 +237,7 @@ struct dw_mipi_dsi {
> >         u32 lanes;
> >         u32 format;
> >         unsigned long mode_flags;
> > +       u32 hw_version;
> >
> >  #ifdef CONFIG_DEBUG_FS
> >         struct dentry *debugfs;
> > @@ -249,6 +252,13 @@ struct dw_mipi_dsi {
> >         const struct dw_mipi_dsi_plat_data *plat_data;
> >  };
> >
> > +static const struct regmap_config dw_mipi_dsi_regmap_cfg = {
> > +       .reg_bits = 32,
> > +       .val_bits = 32,
> > +       .reg_stride = 4,
> > +       .name = "dw-mipi-dsi",
> > +};
> > +
> >  /*
> >   * Check if either a link to a master or slave is present
> >   */
> > @@ -280,16 +290,6 @@ static inline struct dw_mipi_dsi *bridge_to_dsi(struct drm_bridge *bridge)
> >         return container_of(bridge, struct dw_mipi_dsi, bridge);
> >  }
> >
> > -static inline void dsi_write(struct dw_mipi_dsi *dsi, u32 reg, u32 val)
> > -{
> > -       writel(val, dsi->base + reg);
> > -}
> > -
> > -static inline u32 dsi_read(struct dw_mipi_dsi *dsi, u32 reg)
> > -{
> > -       return readl(dsi->base + reg);
> > -}
> > -
> >  static int dw_mipi_dsi_host_attach(struct mipi_dsi_host *host,
> >                                    struct mipi_dsi_device *device)
> >  {
> > @@ -366,29 +366,29 @@ static void dw_mipi_message_config(struct dw_mipi_dsi *dsi,
> >         if (lpm)
> >                 val |= CMD_MODE_ALL_LP;
> >
> > -       dsi_write(dsi, DSI_LPCLK_CTRL, lpm ? 0 : PHY_TXREQUESTCLKHS);
> > -       dsi_write(dsi, DSI_CMD_MODE_CFG, val);
> > +       regmap_write(dsi->regs, DSI_LPCLK_CTRL, lpm ? 0 : PHY_TXREQUESTCLKHS);
> > +       regmap_write(dsi->regs, DSI_CMD_MODE_CFG, val);
> >  }
> >
> >  static int dw_mipi_dsi_gen_pkt_hdr_write(struct dw_mipi_dsi *dsi, u32 hdr_val)
> >  {
> >         int ret;
> > -       u32 val, mask;
> > +       u32 val = 0, mask;
> >
> > -       ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
> > -                                val, !(val & GEN_CMD_FULL), 1000,
> > -                                CMD_PKT_STATUS_TIMEOUT_US);
> > +       ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
> > +                                      val, !(val & GEN_CMD_FULL), 1000,
> > +                                      CMD_PKT_STATUS_TIMEOUT_US);
> >         if (ret) {
> >                 dev_err(dsi->dev, "failed to get available command FIFO\n");
> >                 return ret;
> >         }
> >
> > -       dsi_write(dsi, DSI_GEN_HDR, hdr_val);
> > +       regmap_write(dsi->regs, DSI_GEN_HDR, hdr_val);
> >
> >         mask = GEN_CMD_EMPTY | GEN_PLD_W_EMPTY;
> > -       ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
> > -                                val, (val & mask) == mask,
> > -                                1000, CMD_PKT_STATUS_TIMEOUT_US);
> > +       ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
> > +                                      val, (val & mask) == mask,
> > +                                      1000, CMD_PKT_STATUS_TIMEOUT_US);
> >         if (ret) {
> >                 dev_err(dsi->dev, "failed to write command FIFO\n");
> >                 return ret;
> > @@ -403,24 +403,26 @@ static int dw_mipi_dsi_write(struct dw_mipi_dsi *dsi,
> >         const u8 *tx_buf = packet->payload;
> >         int len = packet->payload_length, pld_data_bytes = sizeof(u32), ret;
> >         __le32 word;
> > -       u32 val;
> > +       u32 val = 0;
> >
> >         while (len) {
> >                 if (len < pld_data_bytes) {
> >                         word = 0;
> >                         memcpy(&word, tx_buf, len);
> > -                       dsi_write(dsi, DSI_GEN_PLD_DATA, le32_to_cpu(word));
> > +                       regmap_write(dsi->regs, DSI_GEN_PLD_DATA,
> > +                                    le32_to_cpu(word));
> >                         len = 0;
> >                 } else {
> >                         memcpy(&word, tx_buf, pld_data_bytes);
> > -                       dsi_write(dsi, DSI_GEN_PLD_DATA, le32_to_cpu(word));
> > +                       regmap_write(dsi->regs, DSI_GEN_PLD_DATA,
> > +                                    le32_to_cpu(word));
> >                         tx_buf += pld_data_bytes;
> >                         len -= pld_data_bytes;
> >                 }
> >
> > -               ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
> > -                                        val, !(val & GEN_PLD_W_FULL), 1000,
> > -                                        CMD_PKT_STATUS_TIMEOUT_US);
> > +               ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
> > +                                              val, !(val & GEN_PLD_W_FULL),
> > +                                              1000, CMD_PKT_STATUS_TIMEOUT_US);
> >                 if (ret) {
> >                         dev_err(dsi->dev,
> >                                 "failed to get available write payload FIFO\n");
> > @@ -438,12 +440,12 @@ static int dw_mipi_dsi_read(struct dw_mipi_dsi *dsi,
> >  {
> >         int i, j, ret, len = msg->rx_len;
> >         u8 *buf = msg->rx_buf;
> > -       u32 val;
> > +       u32 val = 0;
> >
> >         /* Wait end of the read operation */
> > -       ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
> > -                                val, !(val & GEN_RD_CMD_BUSY),
> > -                                1000, CMD_PKT_STATUS_TIMEOUT_US);
> > +       ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
> > +                                      val, !(val & GEN_RD_CMD_BUSY),
> > +                                      1000, CMD_PKT_STATUS_TIMEOUT_US);
> >         if (ret) {
> >                 dev_err(dsi->dev, "Timeout during read operation\n");
> >                 return ret;
> > @@ -451,15 +453,15 @@ static int dw_mipi_dsi_read(struct dw_mipi_dsi *dsi,
> >
> >         for (i = 0; i < len; i += 4) {
> >                 /* Read fifo must not be empty before all bytes are read */
> > -               ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
> > -                                        val, !(val & GEN_PLD_R_EMPTY),
> > -                                        1000, CMD_PKT_STATUS_TIMEOUT_US);
> > +               ret = regmap_read_poll_timeout(dsi->regs, DSI_CMD_PKT_STATUS,
> > +                                              val, !(val & GEN_PLD_R_EMPTY),
> > +                                              1000, CMD_PKT_STATUS_TIMEOUT_US);
> >                 if (ret) {
> >                         dev_err(dsi->dev, "Read payload FIFO is empty\n");
> >                         return ret;
> >                 }
> >
> > -               val = dsi_read(dsi, DSI_GEN_PLD_DATA);
> > +               regmap_read(dsi->regs, DSI_GEN_PLD_DATA, &val);
> >                 for (j = 0; j < 4 && j + i < len; j++)
> >                         buf[i + j] = val >> (8 * j);
> >         }
> > @@ -536,29 +538,29 @@ static void dw_mipi_dsi_video_mode_config(struct dw_mipi_dsi *dsi)
> >         }
> >  #endif /* CONFIG_DEBUG_FS */
> >
> > -       dsi_write(dsi, DSI_VID_MODE_CFG, val);
> > +       regmap_write(dsi->regs, DSI_VID_MODE_CFG, val);
> >  }
> >
> >  static void dw_mipi_dsi_set_mode(struct dw_mipi_dsi *dsi,
> >                                  unsigned long mode_flags)
> >  {
> > -       dsi_write(dsi, DSI_PWR_UP, RESET);
> > +       regmap_write(dsi->regs, DSI_PWR_UP, RESET);
> >
> >         if (mode_flags & MIPI_DSI_MODE_VIDEO) {
> > -               dsi_write(dsi, DSI_MODE_CFG, ENABLE_VIDEO_MODE);
> > +               regmap_write(dsi->regs, DSI_MODE_CFG, ENABLE_VIDEO_MODE);
> >                 dw_mipi_dsi_video_mode_config(dsi);
> > -               dsi_write(dsi, DSI_LPCLK_CTRL, PHY_TXREQUESTCLKHS);
> > +               regmap_write(dsi->regs, DSI_LPCLK_CTRL, PHY_TXREQUESTCLKHS);
> >         } else {
> > -               dsi_write(dsi, DSI_MODE_CFG, ENABLE_CMD_MODE);
> > +               regmap_write(dsi->regs, DSI_MODE_CFG, ENABLE_CMD_MODE);
> >         }
> >
> > -       dsi_write(dsi, DSI_PWR_UP, POWERUP);
> > +       regmap_write(dsi->regs, DSI_PWR_UP, POWERUP);
> >  }
> >
> >  static void dw_mipi_dsi_disable(struct dw_mipi_dsi *dsi)
> >  {
> > -       dsi_write(dsi, DSI_PWR_UP, RESET);
> > -       dsi_write(dsi, DSI_PHY_RSTZ, PHY_RSTZ);
> > +       regmap_write(dsi->regs, DSI_PWR_UP, RESET);
> > +       regmap_write(dsi->regs, DSI_PHY_RSTZ, PHY_RSTZ);
> >  }
> >
> >  static void dw_mipi_dsi_init(struct dw_mipi_dsi *dsi)
> > @@ -573,14 +575,14 @@ static void dw_mipi_dsi_init(struct dw_mipi_dsi *dsi)
> >          */
> >         u32 esc_clk_division = (dsi->lane_mbps >> 3) / 20 + 1;
> >
> > -       dsi_write(dsi, DSI_PWR_UP, RESET);
> > +       regmap_write(dsi->regs, DSI_PWR_UP, RESET);
> >
> >         /*
> >          * TODO dw drv improvements
> >          * timeout clock division should be computed with the
> >          * high speed transmission counter timeout and byte lane...
> >          */
> > -       dsi_write(dsi, DSI_CLKMGR_CFG, TO_CLK_DIVISION(10) |
> > +       regmap_write(dsi->regs, DSI_CLKMGR_CFG, TO_CLK_DIVISION(10) |
> >                   TX_ESC_CLK_DIVISION(esc_clk_division));
> >  }
> >
> > @@ -609,22 +611,22 @@ static void dw_mipi_dsi_dpi_config(struct dw_mipi_dsi *dsi,
> >         if (mode->flags & DRM_MODE_FLAG_NHSYNC)
> >                 val |= HSYNC_ACTIVE_LOW;
> >
> > -       dsi_write(dsi, DSI_DPI_VCID, DPI_VCID(dsi->channel));
> > -       dsi_write(dsi, DSI_DPI_COLOR_CODING, color);
> > -       dsi_write(dsi, DSI_DPI_CFG_POL, val);
> > +       regmap_write(dsi->regs, DSI_DPI_VCID, DPI_VCID(dsi->channel));
> > +       regmap_write(dsi->regs, DSI_DPI_COLOR_CODING, color);
> > +       regmap_write(dsi->regs, DSI_DPI_CFG_POL, val);
> >         /*
> >          * TODO dw drv improvements
> >          * largest packet sizes during hfp or during vsa/vpb/vfp
> >          * should be computed according to byte lane, lane number and only
> >          * if sending lp cmds in high speed is enable (PHY_TXREQUESTCLKHS)
> >          */
> > -       dsi_write(dsi, DSI_DPI_LP_CMD_TIM, OUTVACT_LPCMD_TIME(4)
> > +       regmap_write(dsi->regs, DSI_DPI_LP_CMD_TIM, OUTVACT_LPCMD_TIME(4)
> >                   | INVACT_LPCMD_TIME(4));
> >  }
> >
> >  static void dw_mipi_dsi_packet_handler_config(struct dw_mipi_dsi *dsi)
> >  {
> > -       dsi_write(dsi, DSI_PCKHDL_CFG, CRC_RX_EN | ECC_RX_EN | BTA_EN);
> > +       regmap_write(dsi->regs, DSI_PCKHDL_CFG, CRC_RX_EN | ECC_RX_EN | BTA_EN);
> >  }
> >
> >  static void dw_mipi_dsi_video_packet_config(struct dw_mipi_dsi *dsi,
> > @@ -638,7 +640,7 @@ static void dw_mipi_dsi_video_packet_config(struct dw_mipi_dsi *dsi,
> >          * non-burst video modes, see dw_mipi_dsi_video_mode_config()...
> >          */
> >
> > -       dsi_write(dsi, DSI_VID_PKT_SIZE,
> > +       regmap_write(dsi->regs, DSI_VID_PKT_SIZE,
> >                        dw_mipi_is_dual_mode(dsi) ?
> >                                 VID_PKT_SIZE(mode->hdisplay / 2) :
> >                                 VID_PKT_SIZE(mode->hdisplay));
> > @@ -651,14 +653,15 @@ static void dw_mipi_dsi_command_mode_config(struct dw_mipi_dsi *dsi)
> >          * compute high speed transmission counter timeout according
> >          * to the timeout clock division (TO_CLK_DIVISION) and byte lane...
> >          */
> > -       dsi_write(dsi, DSI_TO_CNT_CFG, HSTX_TO_CNT(1000) | LPRX_TO_CNT(1000));
> > +       regmap_write(dsi->regs, DSI_TO_CNT_CFG,
> > +                    HSTX_TO_CNT(1000) | LPRX_TO_CNT(1000));
> >         /*
> >          * TODO dw drv improvements
> >          * the Bus-Turn-Around Timeout Counter should be computed
> >          * according to byte lane...
> >          */
> > -       dsi_write(dsi, DSI_BTA_TO_CNT, 0xd00);
> > -       dsi_write(dsi, DSI_MODE_CFG, ENABLE_CMD_MODE);
> > +       regmap_write(dsi->regs, DSI_BTA_TO_CNT, 0xd00);
> > +       regmap_write(dsi->regs, DSI_MODE_CFG, ENABLE_CMD_MODE);
> >  }
> >
> >  /* Get lane byte clock cycles. */
> > @@ -692,13 +695,13 @@ static void dw_mipi_dsi_line_timer_config(struct dw_mipi_dsi *dsi,
> >          * computations below may be improved...
> >          */
> >         lbcc = dw_mipi_dsi_get_hcomponent_lbcc(dsi, mode, htotal);
> > -       dsi_write(dsi, DSI_VID_HLINE_TIME, lbcc);
> > +       regmap_write(dsi->regs, DSI_VID_HLINE_TIME, lbcc);
> >
> >         lbcc = dw_mipi_dsi_get_hcomponent_lbcc(dsi, mode, hsa);
> > -       dsi_write(dsi, DSI_VID_HSA_TIME, lbcc);
> > +       regmap_write(dsi->regs, DSI_VID_HSA_TIME, lbcc);
> >
> >         lbcc = dw_mipi_dsi_get_hcomponent_lbcc(dsi, mode, hbp);
> > -       dsi_write(dsi, DSI_VID_HBP_TIME, lbcc);
> > +       regmap_write(dsi->regs, DSI_VID_HBP_TIME, lbcc);
> >  }
> >
> >  static void dw_mipi_dsi_vertical_timing_config(struct dw_mipi_dsi *dsi,
> > @@ -711,10 +714,10 @@ static void dw_mipi_dsi_vertical_timing_config(struct dw_mipi_dsi *dsi,
> >         vfp = mode->vsync_start - mode->vdisplay;
> >         vbp = mode->vtotal - mode->vsync_end;
> >
> > -       dsi_write(dsi, DSI_VID_VACTIVE_LINES, vactive);
> > -       dsi_write(dsi, DSI_VID_VSA_LINES, vsa);
> > -       dsi_write(dsi, DSI_VID_VFP_LINES, vfp);
> > -       dsi_write(dsi, DSI_VID_VBP_LINES, vbp);
> > +       regmap_write(dsi->regs, DSI_VID_VACTIVE_LINES, vactive);
> > +       regmap_write(dsi->regs, DSI_VID_VSA_LINES, vsa);
> > +       regmap_write(dsi->regs, DSI_VID_VFP_LINES, vfp);
> > +       regmap_write(dsi->regs, DSI_VID_VBP_LINES, vbp);
> >  }
> >
> >  static void dw_mipi_dsi_dphy_timing_config(struct dw_mipi_dsi *dsi)
> > @@ -737,23 +740,25 @@ static void dw_mipi_dsi_dphy_timing_config(struct dw_mipi_dsi *dsi)
> >          * DSI_CMD_MODE_CFG.MAX_RD_PKT_SIZE_LP (see CMD_MODE_ALL_LP)
> >          */
> >
> > -       hw_version = dsi_read(dsi, DSI_VERSION) & VERSION;
> > +       regmap_read(dsi->regs, DSI_VERSION, &hw_version);
> > +       hw_version &= VERSION;
> >
> >         if (hw_version >= HWVER_131) {
> > -               dsi_write(dsi, DSI_PHY_TMR_CFG,
> > -                         PHY_HS2LP_TIME_V131(timing.data_hs2lp) |
> > -                         PHY_LP2HS_TIME_V131(timing.data_lp2hs));
> > -               dsi_write(dsi, DSI_PHY_TMR_RD_CFG, MAX_RD_TIME_V131(10000));
> > +               regmap_write(dsi->regs, DSI_PHY_TMR_CFG,
> > +                            PHY_HS2LP_TIME_V131(timing.data_hs2lp) |
> > +                            PHY_LP2HS_TIME_V131(timing.data_lp2hs));
> > +               regmap_write(dsi->regs, DSI_PHY_TMR_RD_CFG,
> > +                            MAX_RD_TIME_V131(10000));
> >         } else {
> > -               dsi_write(dsi, DSI_PHY_TMR_CFG,
> > -                         PHY_HS2LP_TIME(timing.data_hs2lp) |
> > -                         PHY_LP2HS_TIME(timing.data_lp2hs) |
> > -                         MAX_RD_TIME(10000));
> > +               regmap_write(dsi->regs, DSI_PHY_TMR_CFG,
> > +                            PHY_HS2LP_TIME(timing.data_hs2lp) |
> > +                            PHY_LP2HS_TIME(timing.data_lp2hs) |
> > +                            MAX_RD_TIME(10000));
> >         }
> >
> > -       dsi_write(dsi, DSI_PHY_TMR_LPCLK_CFG,
> > -                 PHY_CLKHS2LP_TIME(timing.clk_hs2lp) |
> > -                 PHY_CLKLP2HS_TIME(timing.clk_lp2hs));
> > +       regmap_write(dsi->regs, DSI_PHY_TMR_LPCLK_CFG,
> > +                    PHY_CLKHS2LP_TIME(timing.clk_hs2lp) |
> > +                    PHY_CLKLP2HS_TIME(timing.clk_lp2hs));
> >  }
> >
> >  static void dw_mipi_dsi_dphy_interface_config(struct dw_mipi_dsi *dsi)
> > @@ -763,46 +768,49 @@ static void dw_mipi_dsi_dphy_interface_config(struct dw_mipi_dsi *dsi)
> >          * stop wait time should be the maximum between host dsi
> >          * and panel stop wait times
> >          */
> > -       dsi_write(dsi, DSI_PHY_IF_CFG, PHY_STOP_WAIT_TIME(0x20) |
> > -                 N_LANES(dsi->lanes));
> > +       regmap_write(dsi->regs, DSI_PHY_IF_CFG,
> > +                    PHY_STOP_WAIT_TIME(0x20) | N_LANES(dsi->lanes));
> >  }
> >
> >  static void dw_mipi_dsi_dphy_init(struct dw_mipi_dsi *dsi)
> >  {
> >         /* Clear PHY state */
> > -       dsi_write(dsi, DSI_PHY_RSTZ, PHY_DISFORCEPLL | PHY_DISABLECLK
> > -                 | PHY_RSTZ | PHY_SHUTDOWNZ);
> > -       dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLR);
> > -       dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_TESTCLR);
> > -       dsi_write(dsi, DSI_PHY_TST_CTRL0, PHY_UNTESTCLR);
> > +       regmap_write(dsi->regs, DSI_PHY_RSTZ, PHY_DISFORCEPLL | PHY_DISABLECLK
> > +                    | PHY_RSTZ | PHY_SHUTDOWNZ);
> > +       regmap_write(dsi->regs, DSI_PHY_TST_CTRL0, PHY_UNTESTCLR);
> > +       regmap_write(dsi->regs, DSI_PHY_TST_CTRL0, PHY_TESTCLR);
> > +       regmap_write(dsi->regs, DSI_PHY_TST_CTRL0, PHY_UNTESTCLR);
> >  }
> >
> >  static void dw_mipi_dsi_dphy_enable(struct dw_mipi_dsi *dsi)
> >  {
> > -       u32 val;
> > +       u32 val = 0;
> >         int ret;
> >
> > -       dsi_write(dsi, DSI_PHY_RSTZ, PHY_ENFORCEPLL | PHY_ENABLECLK |
> > -                 PHY_UNRSTZ | PHY_UNSHUTDOWNZ);
> > +       regmap_write(dsi->regs, DSI_PHY_RSTZ, PHY_ENFORCEPLL | PHY_ENABLECLK |
> > +                    PHY_UNRSTZ | PHY_UNSHUTDOWNZ);
> >
> > -       ret = readl_poll_timeout(dsi->base + DSI_PHY_STATUS, val,
> > -                                val & PHY_LOCK, 1000, PHY_STATUS_TIMEOUT_US);
> > +       ret = regmap_read_poll_timeout(dsi->regs, DSI_PHY_STATUS,
> > +                                      val, val & PHY_LOCK,
> > +                                      1000, PHY_STATUS_TIMEOUT_US);
> >         if (ret)
> >                 DRM_DEBUG_DRIVER("failed to wait phy lock state\n");
> >
> > -       ret = readl_poll_timeout(dsi->base + DSI_PHY_STATUS,
> > -                                val, val & PHY_STOP_STATE_CLK_LANE, 1000,
> > -                                PHY_STATUS_TIMEOUT_US);
> > +       ret = regmap_read_poll_timeout(dsi->regs, DSI_PHY_STATUS,
> > +                                      val, val & PHY_STOP_STATE_CLK_LANE, 1000,
> > +                                      PHY_STATUS_TIMEOUT_US);
> >         if (ret)
> >                 DRM_DEBUG_DRIVER("failed to wait phy clk lane stop state\n");
> >  }
> >
> >  static void dw_mipi_dsi_clear_err(struct dw_mipi_dsi *dsi)
> >  {
> > -       dsi_read(dsi, DSI_INT_ST0);
> > -       dsi_read(dsi, DSI_INT_ST1);
> > -       dsi_write(dsi, DSI_INT_MSK0, 0);
> > -       dsi_write(dsi, DSI_INT_MSK1, 0);
> > +       u32 val;
> > +
> > +       regmap_read(dsi->regs, DSI_INT_ST0, &val);
> > +       regmap_read(dsi->regs, DSI_INT_ST1, &val);
> > +       regmap_write(dsi->regs, DSI_INT_MSK0, 0);
> > +       regmap_write(dsi->regs, DSI_INT_MSK1, 0);
> >  }
> >
> >  static void dw_mipi_dsi_bridge_post_disable(struct drm_bridge *bridge)
> > @@ -989,6 +997,14 @@ static void dw_mipi_dsi_debugfs_remove(struct dw_mipi_dsi *dsi) { }
> >
> >  #endif /* CONFIG_DEBUG_FS */
> >
> > +static void dw_mipi_dsi_get_hw_version(struct dw_mipi_dsi *dsi)
> > +{
> > +       regmap_read(dsi->regs, DSI_VERSION, &dsi->hw_version);
> > +       dsi->hw_version &= VERSION;
> > +       if (!dsi->hw_version)
> Here, this is 0 on my board.
> > +               dev_err(dsi->dev, "Failed to read DSI hw version register\n");
> > +}
> > +
> >  static struct dw_mipi_dsi *
> >  __dw_mipi_dsi_probe(struct platform_device *pdev,
> >                     const struct dw_mipi_dsi_plat_data *plat_data)
> > @@ -1020,6 +1036,14 @@ __dw_mipi_dsi_probe(struct platform_device *pdev,
> >                 dsi->base = plat_data->base;
> >         }
> >
> > +       dsi->regs = devm_regmap_init_mmio(dev, dsi->base,
> > +                                         &dw_mipi_dsi_regmap_cfg);
> > +       if (IS_ERR(dsi->regs)) {
> > +               ret = PTR_ERR(dsi->regs);
> > +               DRM_ERROR("Failed to create DW MIPI DSI regmap: %d\n", ret);
> > +               return ERR_PTR(ret);
> > +       }
> > +
> >         dsi->pclk = devm_clk_get(dev, "pclk");
> >         if (IS_ERR(dsi->pclk)) {
> >                 ret = PTR_ERR(dsi->pclk);
> > @@ -1055,6 +1079,8 @@ __dw_mipi_dsi_probe(struct platform_device *pdev,
> >                 clk_disable_unprepare(dsi->pclk);
> >         }
> >
> > +       dw_mipi_dsi_get_hw_version(dsi);
> > +
> >         dw_mipi_dsi_debugfs_init(dsi);
> >         pm_runtime_enable(dev);
> >
> > --
> > 2.26.0
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
> Best regards,
> Adrian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
