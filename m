Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A074112D339
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 19:14:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+i71HcrNKFjBNXsv1Zqt2p8i6I/J2h4zfnPw6VQULFw=; b=fs0thKwPPCs3yV
	k0SFQyovCQ3RztOKzSFxIXFR6Xvxhtc2UbV+xqPp9l9mQdmA3EbE7dhD7BlEYFNG5wTHXC+81Vuie
	b6Fm2Kg3mUkkYL2CPHeAG/o9F2acGLzVYSZjWI+/aYrCUh/UN83VhAaJ1xXb70jYnkenMkq3GTLyD
	3b6SLouwn1Qc3fI9RyL7MVhHq70YuwDC/ugjcW3f5mE2C5moNCaM3nLgODKljm7niYPupvWwBSOV2
	QsP5e1vNCT0WFSGA7s9gNQgNqhqb4wkuHJm/EcFxXV8tCfohY5z7WTWj+qYHa/dqC47N1OPXq2fmf
	om22RFcBx9K+Rz2AdBcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilzYR-0004gH-L3; Mon, 30 Dec 2019 18:14:11 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilzYC-0004Uh-0f; Mon, 30 Dec 2019 18:13:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5E5DD28DF09
Message-ID: <f5e8afbbd46a25b752890880621be95971023f2e.camel@collabora.com>
Subject: Re: [PATCH v12 02/11] media: staging: rkisp1: add Rockchip ISP1
 base driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Helen Koike <helen.koike@collabora.com>, 
 linux-rockchip@lists.infradead.org
Date: Mon, 30 Dec 2019 15:13:41 -0300
In-Reply-To: <20191227200116.2612137-3-helen.koike@collabora.com>
References: <20191227200116.2612137-1-helen.koike@collabora.com>
 <20191227200116.2612137-3-helen.koike@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_101356_317404_3A0858BD 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, eddie.cai.linux@gmail.com, heiko@sntech.de,
 laurent.pinchart@ideasonboard.com, joacim.zetterling@gmail.com,
 kernel@collabora.com, andrey.konovalov@linaro.org,
 Yichong Zhong <zyc@rock-chips.com>, jacob-chen@iotwrt.com,
 hans.verkuil@cisco.com, Allon Huang <allon.huang@rock-chips.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Jacob Chen <cc@rock-chips.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, tfiga@chromium.org, sakari.ailus@linux.intel.com,
 Jacob Chen <jacob2.chen@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Helen,

Just spotted a small thing.

On Fri, 2019-12-27 at 17:01 -0300, Helen Koike wrote:
[..]
> +static int rkisp1_probe(struct platform_device *pdev)
> +{
> +       struct device_node *node = pdev->dev.of_node;
> +       const struct rkisp1_match_data *clk_data;
> +       const struct of_device_id *match;
> +       struct device *dev = &pdev->dev;
> +       struct rkisp1_device *rkisp1;
> +       struct v4l2_device *v4l2_dev;
> +       unsigned int i;
> +       int ret, irq;
> +
> +       match = of_match_node(rkisp1_of_match, node);
> +       rkisp1 = devm_kzalloc(dev, sizeof(*rkisp1), GFP_KERNEL);
> +       if (!rkisp1)
> +               return -ENOMEM;
> +
> +       dev_set_drvdata(dev, rkisp1);
> +       rkisp1->dev = dev;
> +
> +       rkisp1_debug_init(rkisp1);
> +
> +       rkisp1->base_addr = devm_platform_ioremap_resource(pdev, 0);
> +       if (IS_ERR(rkisp1->base_addr))
> +               return PTR_ERR(rkisp1->base_addr);
> +
> +       irq = platform_get_irq(pdev, 0);
> +       if (irq < 0)
> +               return irq;
> +
> +       ret = devm_request_irq(dev, irq, rkisp1_isr, IRQF_SHARED,
> +                              dev_driver_string(dev), dev);
> +       if (ret) {
> +               dev_err(dev, "request irq failed: %d\n", ret);
> +               return ret;
> +       }
> +
> +       rkisp1->irq = irq;
> +       clk_data = match->data;
> +
> +       for (i = 0; i < clk_data->size; i++)
> +               rkisp1->clks[i].id = clk_data->clks[i];
> +       ret = devm_clk_bulk_get(dev, clk_data->size, rkisp1->clks);
> +       if (ret)
> +               return ret;
> +       rkisp1->clk_size = clk_data->size;
> +
> +       pm_runtime_enable(&pdev->dev);
> +
> +       strscpy(rkisp1->media_dev.model, RKISP1_DRIVER_NAME,
> +               sizeof(rkisp1->media_dev.model));
> +       rkisp1->media_dev.dev = &pdev->dev;
> +       strscpy(rkisp1->media_dev.bus_info,
> +               "platform: " RKISP1_DRIVER_NAME,
> +               sizeof(rkisp1->media_dev.bus_info));
> +       media_device_init(&rkisp1->media_dev);
> +
> +       v4l2_dev = &rkisp1->v4l2_dev;
> +       v4l2_dev->mdev = &rkisp1->media_dev;
> +       strscpy(v4l2_dev->name, RKISP1_DRIVER_NAME, sizeof(v4l2_dev->name));
> +
> +       ret = v4l2_device_register(rkisp1->dev, &rkisp1->v4l2_dev);
> +       if (ret)
> +               return ret;
> +
> +       ret = media_device_register(&rkisp1->media_dev);
> +       if (ret) {
> +               dev_err(dev, "Failed to register media device: %d\n", ret);
> +               goto err_unreg_v4l2_dev;
> +       }
> +
> +       ret = rkisp1_entities_register(rkisp1);
> +       if (ret)
> +               goto err_unreg_media_dev;
> +
> +       return 0;
> +
> +err_unreg_media_dev:
> +       media_device_unregister(&rkisp1->media_dev);
> +err_unreg_v4l2_dev:
> +       v4l2_device_unregister(&rkisp1->v4l2_dev);
> +       pm_runtime_disable(&pdev->dev);

There's a missing call to debugfs_remove_recursive here.

> +       return ret;
> +}
> +
> +static int rkisp1_remove(struct platform_device *pdev)
> +{
> +       struct rkisp1_device *rkisp1 = platform_get_drvdata(pdev);
> +
> +       v4l2_async_notifier_unregister(&rkisp1->notifier);
> +       v4l2_async_notifier_cleanup(&rkisp1->notifier);
> +
> +       rkisp1_isp_unregister(rkisp1);
> +
> +       media_device_unregister(&rkisp1->media_dev);
> +       v4l2_device_unregister(&rkisp1->v4l2_dev);
> +
> +       pm_runtime_disable(&pdev->dev);
> +
> +       debugfs_remove_recursive(rkisp1->debug.debugfs_dir);
> +       return 0;
> +}
> +

Thanks,
Ezequiel



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
