Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5078D3995F
	for <lists+linux-rockchip@lfdr.de>; Sat,  8 Jun 2019 01:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiyqVWkspfz/wGxnXPHnfNFqia/TA232ikMNnNnddic=; b=PNupwQ7mmzJCvC
	U+OIel2t6SfqzlE8CAB0nYj70M21I4YNPF7tlmTHXrA3n18NedL/magVnSLPPzYLZRLN9YninMiLM
	HCVTiERt96+Lr7xquiySZeFmSWQdyE3scb7tZnH3hG0EJMpTt5lxjN8e5jRZmrBV3zrZIxorkYk94
	5NZRvzzv3q7tb+6jaCGzLby6bFUGdQM9mQzSm8m8UYvhTJA1zRK/t7rQZGFFC5msFT7TA3Ild/8X0
	oU1tQW4bNylxHvnVZrDt0ZVRenIvefGASOo/uSAl/VhgMLczY2vC3oZgtsYkMMy20DF9yQ3C6aGa/
	S9i8sqDmQvP96fzdmjwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNxq-0007Vx-RC; Fri, 07 Jun 2019 23:08:02 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNxo-0007VR-8B; Fri, 07 Jun 2019 23:08:01 +0000
Received: by mail-qt1-x842.google.com with SMTP id a15so4211588qtn.7;
 Fri, 07 Jun 2019 16:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hmSIYkzntP70mGAy0+3sIVGlGsW0SY7lR03AJk9BDaE=;
 b=WZPbW3eaKxDVqvS79g8AhPg0AXL7yEzS0cPoKlo47btXUecP/458v/d/PiK6M/i2S1
 GIIIOrROLDMOmJDJQzFw2i8QHOnqozCFNFWBRa42C81JbcNjnu9Nv0zpRK9BemnZLA1+
 VjcCIKZ0ELie+j4D+quamsdrB9+G0pF8VGqquna1t9EZTW5UgPM8aV/y5ZGyLBmBeFOA
 jbfFYdnET1ixPAAjk68QQF/Ie8Q0bpdOio1IV8EX41AqUKw7enSq282KJdKfaaKF1Wwk
 ynyoWGc+7Im8EKHOjAkJ17h8AuFnnGGJDbhOzTz9YqfzHSkNI9OfVOG8XlPcEA3zYDcE
 mImw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hmSIYkzntP70mGAy0+3sIVGlGsW0SY7lR03AJk9BDaE=;
 b=al/wBPQTtStyPMKzS4uh7+2VUPJXQBWxnV4/FB/bzqgc/Zlhz9imXbxC2NnzG1h4Qd
 Yr/nXAqaQVpFj6YY9iCtXHU+xujJPhvH9OdMcT2rRYDDtTMc+cxtsftj2aGeNaoUhANT
 EMddvgkahP146FxkY4B3uDeZnjfSIUkvl2J2XoncNmvjNWITxLnMqiSbeoj5DQP9Uo2h
 Feo+wf5KLPMCjFxkRzt4idYcrqjOx1IWjAOtqXxE2vJxRnY4XdZC52CNdc634vh39Nnk
 YfvSs0TbJ90RyY7xRi4bxvF2hwvtqJ8V1lYwmLn08QumH/puQQjrhZRi7PlOZ3bS9dYW
 NjMA==
X-Gm-Message-State: APjAAAXb385d8HQmY+GiAXskd8BkVUsBH/7j/rpNvHtQ/7ic3NvLLWsl
 qw0TWojsHX99taO4FAujQ89mTcNtygKLNKO8O8Q=
X-Google-Smtp-Source: APXvYqzBgF6gOQsbg7FGCS5nTpxiSJgifgCAg7cWOztdJgWpAZX6qriDoJ9UdD0C48nGsknhQPHqHEQm6GiX3MFLk0g=
X-Received: by 2002:a0c:d4a2:: with SMTP id u31mr26989141qvh.218.1559948878483; 
 Fri, 07 Jun 2019 16:07:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190607123731.8737-1-pgwipeout@gmail.com>
 <1559912295.22520.0@gmail.com>
In-Reply-To: <1559912295.22520.0@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 7 Jun 2019 19:07:48 -0400
Message-ID: <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii
 performance.
To: "Leonidas P. Papadakos" <papadakospan@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_160800_319198_CD9143F4 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jose Abreu <jose.abreu@synopsys.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Jun 7, 2019 at 8:58 AM Leonidas P. Papadakos
<papadakospan@gmail.com> wrote:
>
>
> I'll test on my board, but if in the end it does end up being a change
> to both tx and rxpbl then we can replce the 2 tx/rxpbl options with
> one, as far as I know:
>
> snps,pbl = <0x4>;
>
>

The big change was actually snps,aal.
As per the TRM, DMA channels not address aligned have severe
limitations, if they work at all.

Setting the DMA ops as address aligned fixed my 30mbps TX issue when
combined with your snps,txpbl = <0x4>.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
