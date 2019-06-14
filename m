Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB10458EE
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 11:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dlsoujC8lRqxoFmLDRnu88qoxoTnJv5s7NTLkgGenM=; b=Qbxt+dwABspIZC
	54k+45T3aGqUkc5SLYCxZxAB08QrmSg64vphueWe0vz4scBB4xJuVUGf4qd9uaTqyzWDSdJwlpall
	DvVwS+WvPkIVMS0Vs5U2k/dDJrRuKw2/pLoGkAj+JEdpX0dZnWABdZM1P+wWHDQkDhkNiJr26ydmc
	x3rljnNftS9XkKlkq4nzXtf122TJBTJ5SbcYC7akvHe41VT9eux1xwudc3APbDuMYTs2ySW65tvvj
	VUoJb6MzfZ0hbGo2ilYlbVvWRIWNUyydlJ81H/QWrA/14yQyxxDc1PDyZllL2+gEmvSOl96ZYJLhC
	iPaw/tRKuNbDxHzcBvtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbigm-0001fU-Ns; Fri, 14 Jun 2019 09:40:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbigj-0001Uf-42; Fri, 14 Jun 2019 09:40:02 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbige-0004BS-1j; Fri, 14 Jun 2019 11:39:56 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii
 performance.
Date: Fri, 14 Jun 2019 11:39:55 +0200
Message-ID: <4025583.lUYsg5j2zl@phil>
In-Reply-To: <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
References: <20190607123731.8737-1-pgwipeout@gmail.com>
 <1559912295.22520.0@gmail.com>
 <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_024001_315157_EE60CDB6 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 "Leonidas P. Papadakos" <papadakospan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 8. Juni 2019, 01:07:48 CEST schrieb Peter Geis:
> On Fri, Jun 7, 2019 at 8:58 AM Leonidas P. Papadakos
> <papadakospan@gmail.com> wrote:
> >
> >
> > I'll test on my board, but if in the end it does end up being a change
> > to both tx and rxpbl then we can replce the 2 tx/rxpbl options with
> > one, as far as I know:
> >
> > snps,pbl = <0x4>;
> >
> >
> 
> The big change was actually snps,aal.
> As per the TRM, DMA channels not address aligned have severe
> limitations, if they work at all.
> 
> Setting the DMA ops as address aligned fixed my 30mbps TX issue when
> combined with your snps,txpbl = <0x4>.

same as with the other patch: I've lost track of what matters,
so please resend the ones that matter with appropriate
Tested-by, Reviewed-by tags by involved people.

Thanks
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
