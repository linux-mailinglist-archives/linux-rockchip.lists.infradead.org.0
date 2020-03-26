Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 822A9194723
	for <lists+linux-rockchip@lfdr.de>; Thu, 26 Mar 2020 20:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIMKTKqEYXUMv1KQyop5k8FkS5ZHFW80ba87GR04xbY=; b=VO9Xyuhuas/Zww
	KXwFGve+fE/A/IwMXn6SFPZ4uGrl/FqbYvZsFtFSP3xmskPmBdC9BFNep1v9nOLJsdqL59cvV6A4Q
	8NFKd0lAzBq7+D5Kzjdf5yk++BkWVN+Cf9ksxQFmuq8j54Lny3deST6FPUHMgtH/CiRRg3ri9FCK2
	KSYVuxvDzm5mFHblYgNqY4pUZw8IJZ3nRyfreRbgaS9w8NMqQGRahHr4FAnAOCjVUhj8Lf+5tDF8e
	Fwpwyavmf2rbhc9yxGBvf/2ffudKaWHb3mPHQRXsnNGzGC0hpP673fgHEz32Z3di9tHN5bdMh3wGR
	f3R5mCAS1F620/HXME7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHXrr-000600-HC; Thu, 26 Mar 2020 19:08:39 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXro-0005zf-Rd
 for linux-rockchip@lists.infradead.org; Thu, 26 Mar 2020 19:08:38 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 293262979D9
Message-ID: <03f7e88c778f7234ff53579527c4481367fe645c.camel@collabora.com>
Subject: Re: [PATCH v3 7/7] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Rob Herring <robh@kernel.org>
Date: Thu, 26 Mar 2020 16:08:23 -0300
In-Reply-To: <20200326165511.GA11084@bogus>
References: <20200325213439.16509-1-ezequiel@collabora.com>
 <20200325213439.16509-8-ezequiel@collabora.com>
 <20200326165511.GA11084@bogus>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_120837_029234_C3B1FB84 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 2020-03-26 at 10:55 -0600, Rob Herring wrote:
> On Wed, 25 Mar 2020 18:34:38 -0300, Ezequiel Garcia wrote:
> > Convert Rockchip VPU (Hantro IP block) codec driver documentation to
> > json-schema.
> > 
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Rob Herring <robh@kernel.org>
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  .../bindings/media/rockchip-vpu.txt           | 43 ----------
> >  .../bindings/media/rockchip-vpu.yaml          | 82 +++++++++++++++++++
> >  MAINTAINERS                                   |  2 +-
> >  3 files changed, 83 insertions(+), 44 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.txt
> >  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> Error: Documentation/devicetree/bindings/media/rockchip-vpu.example.dts:28.41-42 syntax error
> FATAL ERROR: Unable to parse input tree
> scripts/Makefile.lib:311: recipe for target 'Documentation/devicetree/bindings/media/rockchip-vpu.example.dt.yaml' failed
> make[1]: *** [Documentation/devicetree/bindings/media/rockchip-vpu.example.dt.yaml] Error 1
> make[1]: *** Waiting for unfinished jobs....
> Makefile:1262: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
> 
> See https://patchwork.ozlabs.org/patch/1261669
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
> 
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
> 
> Please check and re-submit.
> 

Sure, I will.

Sorry about that!

Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
