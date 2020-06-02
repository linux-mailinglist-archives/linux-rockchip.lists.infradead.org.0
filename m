Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E66C1EBC2E
	for <lists+linux-rockchip@lfdr.de>; Tue,  2 Jun 2020 14:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwqFe4juk+ZP7/vctCFQSLLc6bq/0/7ucDahtNsveHw=; b=nQZUN1Sf9sH3tk
	MIXMYatjOvbBPJowEXOva+ihswBK72Ay3ljOZiF79sWYeQctVc/NS2KOB2WXXtE3hTG026pQ1BDgA
	KQj6KaBWtborf1vP7Fi3x9obobYKo+GSNqaJPIlAMwGhoyJjgwWYe2k1SjjKLCfJd/PnGm0cZ6pSj
	RZpHXza/kKkPcrtOUh6Bu5bmiPMxgtxaJ1ocaAMIHc1zLdL6cCl2F/9lFFgeWALGga8ZqChMYCZk2
	zYhgz2PeI9NpOWVHFI2Qc3/z4PdZa1bVUjFz5rhyl5G0kWpKRS0X9K1soevJmev6vjk/WVXDJSSz9
	SRJAQ7isQIF2vo/UoLrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6Ti-0007FL-Ha; Tue, 02 Jun 2020 12:57:14 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6TX-000774-MR; Tue, 02 Jun 2020 12:57:04 +0000
Received: by mail-ua1-x941.google.com with SMTP id d8so1180106uam.12;
 Tue, 02 Jun 2020 05:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BpsIlBQ5nejFohRETbNb9q04gA6fq5BCcsSBn6KKApI=;
 b=JetxGkcmZWwBcj73qk5GvrPQ52LZYWBhk1chHXBbYxrojwIOYCdLU6/e4biJGuow5b
 tVoDhU2dirPxe0+SQa6spJ5Di7Jjk0/Bkgco+Tpe0Z3oAFDHwh0KzP7w92q5qj/3/x3Q
 9L8vVzBOe32M8mc6kbcNKPmzg0fzMn/paYJ/jnoHguC1SPWDNX9zXsXanb+WqbRV+249
 QMj5r88MFMgwB/mim2CvQ6KmhxANKMbwldClAaVj/3SBwiVC5ZmtFzpv9tadk+xPBodH
 xg5ImqIr4I7KAgHbdnae1fbbQpdjwEwen0yl9P7/GvxCOo+2LHlSYtreF+iVF4LI/u8f
 8AVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BpsIlBQ5nejFohRETbNb9q04gA6fq5BCcsSBn6KKApI=;
 b=HIktKqVN465x/1MVtNdSy3WC/j+XqbBcIMMvbDTic3lCg1uS/NaJFXcWRVkT4QTryj
 YI9L4J6wklqbefBpzK2LB0lTcnHxvVqM1O+UIprKMJ9MBVF/JYhtJFOZeyVqANqgXg8r
 JHeqnCF5a9bK19beOsnOvoPrJEZgr03TzVMt4zybcFGknzm56zOLqyCB7XwQhjhGazBV
 0a+E48y4G7txraLjbNVK1X2uuLNw2tqrEg14V4wO4XD2fqrxsU3ppwH2GpNfKztY46M6
 D19VkeUVhoHyGLYaGCuMgM6TOVIbFLIwqOXD1TJfsu/VpSAsXuEpAkkpoNdfP8vTLk7M
 5jAg==
X-Gm-Message-State: AOAM531hSgTnTy/3ESe1ey18icDgUotauNnRxDYWSPqXEmyS2/dqL5K7
 guA70X4zbP7yWPSJ01znxaOg0ls7QGDzADJZf7A=
X-Google-Smtp-Source: ABdhPJy94b4dAChxDuW4wDOKIg2tO2nMimj827DSzBUBaeBS4xq/NcIVF/RbxLJKqEmvBcwkcK/jKU0XrmmGsie+2ZA=
X-Received: by 2002:a9f:22e1:: with SMTP id 88mr13225614uan.19.1591102618237; 
 Tue, 02 Jun 2020 05:56:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
 <20200427081952.3536741-9-adrian.ratiu@collabora.com>
 <4acc09e8-0610-01f6-b18d-3ffc390c45a3@st.com>
 <87blm387vt.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
In-Reply-To: <87blm387vt.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Tue, 2 Jun 2020 13:53:40 +0100
Message-ID: <CACvgo51QyzEa8LFpGq5zjYV-0TifQRtNh4WhMYy8jNtaswxd7Q@mail.gmail.com>
Subject: Re: [Linux-stm32] [PATCH v8 08/10] drm: stm: dw-mipi-dsi: let the
 bridge handle the HW version check
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_055703_733307_3E39A8B9 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.l.velikov[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Adrian Pop <pop.adrian61@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Philippe CORNU <philippe.cornu@st.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yannick FERTRE <yannick.fertre@st.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Adrian,

On Mon, 1 Jun 2020 at 10:14, Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> On Fri, 29 May 2020, Philippe CORNU <philippe.cornu@st.com> wrote:
> > Hi Adrian, and thank you very much for the patchset.  Thank you
> > also for having tested it on STM32F769 and STM32MP1.  Sorry for
> > the late response, Yannick and I will review it as soon as
> > possible and we will keep you posted.  Note: Do not hesitate to
> > put us in copy for the next version  (philippe.cornu@st.com,
> > yannick.fertre@st.com) Regards, Philippe :-)
>
> Hi Philippe,
>
> Thank you very much for your previous and future STM testing,
> really appreciate it! I've CC'd Yannick until now but I'll also CC
> you sure :)
>
> It's been over a month since I posted v8 and I was just gearing up
> to address all feedback, rebase & retest to prepare v9 but I'll
> wait a little longer, no problem, it's no rush.
>
Small idea, pardon for joining so late:

Might be a good idea to add inline comment, why the clocks are disabled so late.
Effectively a 2 line version of the commit summary.

Feel free to make that a separate/follow-up patch.

-Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
